using System.Collections.Generic;
using Nancy;
using Nancy.ViewEngines.Razor;

namespace ShoeStore
{
  public class HomeModule : NancyModule
  {
    public HomeModule()
    {
      Get["/"] = _ => {
      return View["index.cshtml"];
      };

      Get["/stores"] = _ => {
      List<Store> allStores = Store.GetAll();
      return View["stores.cshtml", allStores];
      };

      Get["/store/{id}"] = parameters => {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Store SelectedStore = Store.Find(parameters.id);
        List<Brand> StoreBrands = SelectedStore.GetBrands();
        List<Brand> AllBrands = Brand.GetAll();
        model.Add("store", SelectedStore);
        model.Add("storeBrands", StoreBrands);
        model.Add("allBrands", AllBrands);
      return View["store.cshtml", model];
      };

      Get["/store/{id}/edit"] = parameters => {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Store SelectedStore = Store.Find(parameters.id);
        List<Brand> StoreBrands = SelectedStore.GetBrands();
        List<Brand> AllBrands = Brand.GetAll();
        model.Add("store", SelectedStore);
        model.Add("storeBrands", StoreBrands);
        model.Add("allBrands", AllBrands);
      return View["edit_store.cshtml", model];
      };

      Patch["/store/{id}/edit"] = parameters => {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Store SelectedStore = Store.Find(parameters.id);
        SelectedStore.Update(Request.Form["store-name"]);
        List<Brand> StoreBrands = SelectedStore.GetBrands();
        List<Brand> AllBrands = Brand.GetAll();
        model.Add("store", SelectedStore);
        model.Add("storeBrands", StoreBrands);
        model.Add("allBrands", AllBrands);
        return View["store.cshtml", model];
      };

      Delete["/store/{id}/delete"] = parameters => {
        Store SelectedStore = Store.Find(parameters.id);
        SelectedStore.Delete();
        List<Store> allStores = Store.GetAll();
        return View["stores.cshtml", allStores];
      };

      Get["/store/delete_all"] = _ => {
        Store.DeleteAll();
        List<Store> allStores = Store.GetAll();
        return View["stores.cshtml", allStores];
      };


      Post["/addStore"] = _ => {
        Store newStore = new Store(Request.Form["store-name"]);
        newStore.Save();
        List<Store> allStores = Store.GetAll();
      return View["stores.cshtml", allStores];
      };


      Get["/brands"] = _ => {
      List<Brand> allBrands = Brand.GetAll();
      return View["brands.cshtml", allBrands];
      };

      Get["/brand/{id}"] = parameters => {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Brand SelectedBrand = Brand.Find(parameters.id);
        List<Store> BrandStores = SelectedBrand.GetStores();
        List<Store> AllStores = Store.GetAll();
        model.Add("brand", SelectedBrand);
        model.Add("brandStores", BrandStores);
        model.Add("allStores", AllStores);
      return View["brand.cshtml", model];
      };

      Post["/brand/{id}/add_store"] = parameters => {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Brand SelectedBrand = Brand.Find(parameters.id);
        Store store = Store.Find(Request.Form["store-id"]);
        SelectedBrand.AddStore(store);
        List<Store> BrandStores = SelectedBrand.GetStores();
        List<Store> AllStores = Store.GetAll();
        model.Add("brand", SelectedBrand);
        model.Add("brandStores", BrandStores);
        model.Add("allStores", AllStores);
      return View["brand.cshtml", model];
      };

      Post["/store/{id}/add_brand"] = parameters => {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Store SelectedStore = Store.Find(parameters.id);
        Brand brand = Brand.Find(Request.Form["brand-id"]);
        SelectedStore.AddBrand(brand);
        List<Brand> StoreBrands = SelectedStore.GetBrands();
        List<Brand> AllBrands = Brand.GetAll();
        model.Add("store", SelectedStore);
        model.Add("storeBrands", StoreBrands);
        model.Add("allBrands", AllBrands);
      return View["store.cshtml", model];
      };


      Post["/addBrand"] = _ => {
        Brand newBrand = new Brand(Request.Form["brand-name"]);
        newBrand.Save();
        List<Brand> allBrands = Brand.GetAll();
      return View["brands.cshtml", allBrands];
      };

      Post["/brand_search"] = _ => {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Brand foundBrand = Brand.FindName(Request.Form["brand-name"]);
        model.Add("brand", foundBrand);
        return View["brand_search.cshtml", model];
      };

      Post["/store_search"] = _ => {
        Dictionary<string, object> model = new Dictionary<string, object>();
        Store foundStore = Store.FindName(Request.Form["store-name"]);
        model.Add("store", foundStore);
        return View["store_search.cshtml", model];
      };
    }
  }
}
