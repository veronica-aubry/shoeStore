using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;

namespace ShoeStore
{
  public class StoreTest : IDisposable
  {

    public void Dispose()
    {
      Brand.DeleteAll();
      Store.DeleteAll();
    }

    public StoreTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=shoe_store_test;Integrated Security=SSPI;";
    }

    [Fact]
    public void Test_GetBrands_RetrievesAllBrandsWithStore()
    {
      //Arrange
      Store testStore = new Store("DSW");
      testStore.Save();

      Brand firstBrand = new Brand("Steve Madden");
      firstBrand.Save();

      firstBrand.AddStore(testStore);
      Brand secondBrand = new Brand("Soda");
      secondBrand.Save();

      secondBrand.AddStore(testStore);

      //Act
      List<Brand> testBrandList = new List<Brand> {firstBrand, secondBrand};
      List<Brand> resultBrandList = testStore.GetBrands();

      //Assert
      Assert.Equal(testBrandList, resultBrandList);
    }

    [Fact]
    public void Test_Delete_DeletesStoreFromDatabase()
    {
      //Arrange
      string name1 = "Steve Madden";
      Store testStore1 = new Store(name1);
      testStore1.Save();

      string name2 = "Soda";
      Store testStore2 = new Store(name2);
      testStore2.Save();

      //Act
      testStore1.Delete();
      List<Store> resultStores = Store.GetAll();
      List<Store> testStoreList = new List<Store> {testStore2};

      Assert.Equal(testStoreList, resultStores);
    }

        [Fact]
    public void Test_Delete_DeletesStoreAssociationsFromDatabase()
    {
      //Arrange
      Brand testBrand = new Brand("Steve Madden");
      testBrand.Save();

      string testName = "Steve Madden";
      Store testStore = new Store(testName);
      testStore.Save();

      //Act
      testStore.AddBrand(testBrand);
      testStore.Delete();

      List<Store> resultBrandStores = testBrand.GetStores();
      List<Store> testBrandStores = new List<Store> {};

      //Assert
      Assert.Equal(testBrandStores, resultBrandStores);
    }

    [Fact]
    public void Test_StoresEmptyAtFirst()
    {
      //Arrange, Act
      int result = Store.GetAll().Count;

      //Assert
      Assert.Equal(0, result);
    }

    [Fact]
    public void Test_Equal_ReturnsTrueForSameName()
    {
      //Arrange, Act
      Store firstStore = new Store("DSW");
      Store secondStore = new Store("DSW");

      //Assert
      Assert.Equal(firstStore, secondStore);
    }

    [Fact]
    public void Test_Save_SavesStoreToDatabase()
    {
      //Arrange
      Store testStore = new Store("DSW");
      testStore.Save();

      //Act
      List<Store> result = Store.GetAll();
      List<Store> testList = new List<Store>{testStore};

      //Assert
      Assert.Equal(testList, result);
    }

    [Fact]
    public void Test_Save_AssignsIdToStoreObject()
    {
      //Arrange
      Store testStore = new Store("DSW");
      testStore.Save();

      //Act
      Store savedStore = Store.GetAll()[0];

      int result = savedStore.GetId();
      int testId = testStore.GetId();

      //Assert
      Assert.Equal(testId, result);
    }

    [Fact]
    public void Test_Find_FindsStoreInDatabase()
    {
      //Arrange
      Store testStore = new Store("DSW");
      testStore.Save();

      //Act
      Store foundStore = Store.Find(testStore.GetId());

      //Assert
      Assert.Equal(testStore, foundStore);
    }

    [Fact]
    public void Test_EqualOverrideTrueForSameDescription()
    {
      //Arrange, Act
      Brand firstBrand = new Brand("Steve Madden", 1);
      Brand secondBrand = new Brand("Steve Madden", 1);

      //Assert
      Assert.Equal(firstBrand, secondBrand);
    }

    [Fact]
    public void Test_Save()
    {
      //Arrange
      Brand testBrand = new Brand("Steve Madden", 1);
      testBrand.Save();

      //Act
      List<Brand> result = Brand.GetAll();
      List<Brand> testList = new List<Brand>{testBrand};

      //Assert
      Assert.Equal(testList, result);
    }


    [Fact]
    public void Test_AddBrand_AddsBrandToStore()
    {
      //Arrange
      Store testStore = new Store("DSW");
      testStore.Save();

      Brand testBrand = new Brand("Steve Madden");
      testBrand.Save();

      Brand testBrand2 = new Brand("Soda");
      testBrand2.Save();

      //Act
      testStore.AddBrand(testBrand);
      testStore.AddBrand(testBrand2);

      List<Brand> result = testStore.GetBrands();
      List<Brand> testList = new List<Brand>{testBrand, testBrand2};

      //Assert
      Assert.Equal(testList, result);
    }
  }
}
