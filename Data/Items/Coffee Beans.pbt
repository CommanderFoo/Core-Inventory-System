Assets {
  Id: 18384392046183835442
  Name: "Coffee Beans"
  PlatformAssetType: 33
  SerializationVersion: 115
  ItemAsset {
    CustomName: "Coffee Beans"
    MaximumStackCount: 500
    ItemTemplateAssetId: 10208314571334523668
    CustomParameters {
      Overrides {
        Name: "cs:Icon"
        AssetReference {
          Id: 4083375966430084893
        }
      }
      Overrides {
        Name: "cs:position"
        Vector {
        }
      }
      Overrides {
        Name: "cs:timestamp"
        Int: 0
      }
      Overrides {
        Name: "cs:position:isrep"
        Bool: true
      }
      Overrides {
        Name: "cs:timestamp:isrep"
        Bool: true
      }
    }
    Assets {
      Id: 4083375966430084893
      Name: "Fantasy Beans 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Food_Beans_001"
      }
    }
  }
}
