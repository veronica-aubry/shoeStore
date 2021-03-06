using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System;

namespace ShoeStore
{
  public class Store
  {
    private int _id;
    private string _name;

    public Store(string Name, int Id = 0)
    {
      _id = Id;
      _name = Name;
    }

    public override bool Equals(System.Object otherStore)
    {
        if (!(otherStore is Store))
        {
          return false;
        }
        else
        {
          Store newStore = (Store) otherStore;
          bool idEquality = this.GetId() == newStore.GetId();
          bool nameEquality = this.GetName() == newStore.GetName();
          return (idEquality && nameEquality);
        }
    }

    public int GetId()
    {
      return _id;
    }
    public string GetName()
    {
      return _name;
    }
    public void SetName(string newName)
    {
      _name = newName;
    }

    public void Update(string newName)
    {
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr;
      conn.Open();

      SqlCommand cmd = new SqlCommand("UPDATE stores SET name = @NewName OUTPUT INSERTED.name WHERE id = @StoreId;", conn);

      SqlParameter newNameParameter = new SqlParameter();
      newNameParameter.ParameterName = "@NewName";
      newNameParameter.Value = newName;
      cmd.Parameters.Add(newNameParameter);


      SqlParameter storeIdParameter = new SqlParameter();
      storeIdParameter.ParameterName = "@StoreId";
      storeIdParameter.Value = this.GetId();
      cmd.Parameters.Add(storeIdParameter);
      rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        this._name = rdr.GetString(0);
      }

      if (rdr != null)
      {
        rdr.Close();
      }

      if (conn != null)
      {
        conn.Close();
    }
  }


    public static List<Store> GetAll()
    {
      List<Store> allStores = new List<Store>{};

      SqlConnection conn = DB.Connection();
      SqlDataReader rdr = null;
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM stores;", conn);
      rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        int storeId = rdr.GetInt32(0);
        string storeName = rdr.GetString(1);
        Store newStore = new Store(storeName, storeId);
        allStores.Add(newStore);
      }

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }

      return allStores;
    }

    public void Save()
    {
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr;
      conn.Open();

      SqlCommand cmd = new SqlCommand("INSERT INTO stores (name) OUTPUT INSERTED.id VALUES (@StoreName);", conn);

      SqlParameter nameParameter = new SqlParameter();
      nameParameter.ParameterName = "@StoreName";
      nameParameter.Value = this.GetName();
      cmd.Parameters.Add(nameParameter);
      rdr = cmd.ExecuteReader();

      while(rdr.Read())
      {
        this._id = rdr.GetInt32(0);
      }
      if (rdr != null)
      {
        rdr.Close();
      }
      if(conn != null)
      {
        conn.Close();
      }
    }

    public static void DeleteAll()
    {
      SqlConnection conn = DB.Connection();
      conn.Open();
      SqlCommand cmd = new SqlCommand("DELETE FROM stores;", conn);
      cmd.ExecuteNonQuery();
    }

    public static Store Find(int id)
    {
      SqlConnection conn = DB.Connection();
      SqlDataReader rdr = null;
      conn.Open();

      SqlCommand cmd = new SqlCommand("SELECT * FROM stores WHERE id = @StoreId;", conn);
      SqlParameter storeIdParameter = new SqlParameter();
      storeIdParameter.ParameterName = "@StoreId";
      storeIdParameter.Value = id.ToString();
      cmd.Parameters.Add(storeIdParameter);
      rdr = cmd.ExecuteReader();

      int foundStoreId = 0;
      string foundStoreName = null;

      while(rdr.Read())
      {
        foundStoreId = rdr.GetInt32(0);
        foundStoreName = rdr.GetString(1);
      }
      Store foundStore = new Store(foundStoreName, foundStoreId);

      if (rdr != null)
      {
        rdr.Close();
      }
      if (conn != null)
      {
        conn.Close();
      }
      return foundStore;
    }

    public static Store FindName(string name)
   {
     SqlConnection conn = DB.Connection();
     SqlDataReader rdr = null;
     conn.Open();

     SqlCommand cmd = new SqlCommand("SELECT * FROM stores WHERE name = @StoreName", conn);
     SqlParameter storeNameParameter = new SqlParameter();
     storeNameParameter.ParameterName = "@StoreName";
     storeNameParameter.Value = name;
     cmd.Parameters.Add(storeNameParameter);
     rdr = cmd.ExecuteReader();

     int foundStoreId = 0;
     string foundStoreName = null;

     while(rdr.Read())
     {
       foundStoreId = rdr.GetInt32(0);
       foundStoreName = rdr.GetString(1);
     }
     Store foundStore = new Store(foundStoreName, foundStoreId);

     if (rdr != null)
     {
       rdr.Close();
     }
     if (conn != null)
     {
       conn.Close();
     }
     return foundStore;
   }


      public void Delete()
    {
      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("DELETE FROM stores WHERE id = @StoreId; DELETE FROM brands_stores WHERE store_id = @StoreId;", conn);

      SqlParameter storeIdParameter = new SqlParameter();
      storeIdParameter.ParameterName = "@StoreId";
      storeIdParameter.Value = this.GetId();

      cmd.Parameters.Add(storeIdParameter);
      cmd.ExecuteNonQuery();

      if (conn != null)
      {
        conn.Close();
      }
    }

        public void AddBrand(Brand newBrand)
    {
      SqlConnection conn = DB.Connection();
      conn.Open();

      SqlCommand cmd = new SqlCommand("INSERT INTO brands_stores (store_id, brand_id) VALUES (@StoreId, @BrandId)", conn);
      SqlParameter storeIdParameter = new SqlParameter();
      storeIdParameter.ParameterName = "@StoreId";
      storeIdParameter.Value = this.GetId();
      cmd.Parameters.Add(storeIdParameter);

      SqlParameter brandIdParameter = new SqlParameter();
      brandIdParameter.ParameterName = "@BrandId";
      brandIdParameter.Value = newBrand.GetId();
      cmd.Parameters.Add(brandIdParameter);

      cmd.ExecuteNonQuery();

      if (conn != null)
      {
        conn.Close();
      }
    }

      public List<Brand> GetBrands()
      {

        SqlConnection conn = DB.Connection();
        conn.Open();

        SqlDataReader queryReader = null;
        SqlCommand storeQuery = new SqlCommand("SELECT brands.* FROM stores JOIN brands_stores ON (stores.id = brands_stores.store_id) JOIN brands ON (brands_stores.brand_id = brands.id) WHERE stores.id = @StoreId;", conn);

        SqlParameter storeIdParameter = new SqlParameter();
        storeIdParameter.ParameterName = "@StoreId";
        storeIdParameter.Value = this.GetId();
        storeQuery.Parameters.Add(storeIdParameter);

        List<Brand> brands = new List<Brand> {};

        queryReader = storeQuery.ExecuteReader();
        while (queryReader.Read())
        {
          int thisBrandId = queryReader.GetInt32(0);
          string brandName = queryReader.GetString(1);
          Brand foundBrand = new Brand(brandName, thisBrandId);
          brands.Add(foundBrand);
        }
        if (queryReader != null)
        {
          queryReader.Close();
        }

      if (conn != null)
      {
        conn.Close();
      }
      return brands;
    }

  }
}
