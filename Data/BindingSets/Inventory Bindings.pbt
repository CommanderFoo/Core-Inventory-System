Assets {
  Id: 5004294234075582436
  Name: "Inventory Bindings"
  PlatformAssetType: 29
  SerializationVersion: 107
  BindingSetAsset {
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:rightclick"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "Inventory Add One"
      Description: "Drops one item onto a slot."
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:axis"
      }
      AxisBindingData {
        IncreaseInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:scrollup"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
        DecreaseInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:scrolldown"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "Hotbar Slot Selection"
      Description: "Moves left or right to select a slot in the hotbar."
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
    }
  }
}
