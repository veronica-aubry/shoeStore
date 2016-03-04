using Xunit;
using System.Collections.Generic;
using System;
using System.Data;
using System.Data.SqlClient;

namespace ShoeStore
{
  public class BrandTest : IDisposable
  {


    public void Dispose()
    {
      Brand.DeleteAll();
      Store.DeleteAll();
    }

    public BrandTest()
    {
      DBConfiguration.ConnectionString = "Data Source=(localdb)\\mssqllocaldb;Initial Catalog=shoe_store_test;Integrated Security=SSPI;";
    }

        [Fact]
    public void Test_DatabaseEmptyAtFirst()
    {
      //Arrange, Act
      int result = Brand.GetAll().Count;

      //Assert
      Assert.Equal(0, result);
    }

        [Fact]
    public void Test_Equal_ReturnsTrueIfNamesAreTheSame()
    {
      //Arrange, Act
      Brand firstBrand = new Brand("Steve Madden");
      Brand secondBrand = new Brand("Steve Madden");

      //Assert
      Assert.Equal(firstBrand, secondBrand);
    }

        [Fact]
    public void Test_Find_FindsBrandInDatabase()
    {
      //Arrange
      Brand testBrand = new Brand("Steve Madden");
      testBrand.Save();

      //Act
      Brand foundBrand = Brand.Find(testBrand.GetId());

      //Assert
      Assert.Equal(testBrand, foundBrand);
    }

        [Fact]
    public void Test_Save_SavesToDatabase()
    {
      //Arrange
      Brand testBrand = new Brand("Steve Madden");

      //Act
      testBrand.Save();
      List<Brand> result = Brand.GetAll();
      List<Brand> testList = new List<Brand>{testBrand};

      //Assert
      Assert.Equal(testList, result);
    }

    [Fact]
    public void Test_SaveAssignsIdToObject()
    {
      //Arrange
      Brand testBrand = new Brand("Steve Madden");
      testBrand.Save();

      //Act
      Brand savedBrand = Brand.GetAll()[0];

      int result = savedBrand.GetId();
      int testId = testBrand.GetId();

      //Assert
      Assert.Equal(testId, result);
    }

    [Fact]
   public void Test_FindFindsBrandInDatabase()
   {
     //Arrange
     Brand testBrand = new Brand("Steve Madden");
     testBrand.Save();

     //Act
     Brand foundBrand = Brand.Find(testBrand.GetId());

     //Assert
     Assert.Equal(testBrand, foundBrand);
   }

   [Fact]
    public void Test_AddStore_AddsStoreToBrand()
    {
      //Arrange
      Brand testBrand = new Brand("Steve Madden");
      testBrand.Save();

      Store testStore = new Store("Soda");
      testStore.Save();

      //Act
      testBrand.AddStore(testStore);

      List<Store> result = testBrand.GetStores();
      List<Store> testList = new List<Store>{testStore};

      //Assert
      Assert.Equal(testList, result);
    }

    [Fact]
    public void Test_GetStores_ReturnsAllBrandStores()
    {
      //Arrange
      Brand testBrand = new Brand("Steve Madden");
      testBrand.Save();

      Store testStore1 = new Store("Soda");
      testStore1.Save();

      Store testStore2 = new Store("Work stuff");
      testStore2.Save();

      //Act
      testBrand.AddStore(testStore1);
      List<Store> result = testBrand.GetStores();
      List<Store> testList = new List<Store> {testStore1};

      //Assert
      Assert.Equal(testList, result);
    }

    [Fact]
    public void Test_Delete_DeletesBrandAssociationsFromDatabase()
    {
      //Arrange
      Store testStore = new Store("Soda");
      testStore.Save();

      string testName = "Steve Madden";
      Brand testBrand = new Brand(testName);
      testBrand.Save();

      //Act
      testBrand.AddStore(testStore);
      testBrand.Delete();

      List<Brand> resultStoreBrands = testStore.GetBrands();
      List<Brand> testStoreBrands = new List<Brand> {};

      //Assert
      Assert.Equal(testStoreBrands, resultStoreBrands);
    }
  }
}
