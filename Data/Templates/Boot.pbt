Assets {
  Id: 14348575431141479381
  Name: "Boot"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13112057175455967386
      Objects {
        Id: 13112057175455967386
        Name: "Boot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 13553342627057230147
        ChildIds: 2578883431720962284
        ChildIds: 8911118781814373440
        UnregisteredParameters {
          Overrides {
            Name: "cs:Inventory"
            AssetReference {
              Id: 12879219911357857649
            }
          }
          Overrides {
            Name: "cs:UpDownCurve"
            SimpleCurve {
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
              }
              Keys {
                Interpolation {
                  Value: "mc:erichcurveinterpmode:rcim_cubic"
                }
                TangentMode {
                  Value: "mc:erichcurvetangentmode:rctm_user"
                }
                Time: 3
                Value: 1
              }
              PreExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_oscillate"
              }
              PostExtrapolation {
                Value: "mc:erichcurveextrapolation:rcce_oscillate"
              }
              DefaultValue: 3.40282347e+38
            }
          }
          Overrides {
            Name: "cs:Rotate"
            Bool: true
          }
          Overrides {
            Name: "cs:AnimateUpDown"
            Bool: true
          }
          Overrides {
            Name: "cs:Multiplier"
            Float: 20
          }
          Overrides {
            Name: "cs:IsShared"
            Bool: false
          }
          Overrides {
            Name: "cs:FollowSpeed"
            Int: 5000
          }
          Overrides {
            Name: "cs:UpDownCurve:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:UpDownCurve:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:Rotate:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:Rotate:ml"
            Bool: false
          }
          Overrides {
            Name: "cs:AnimateUpDown:isrep"
            Bool: false
          }
          Overrides {
            Name: "cs:AnimateUpDown:ml"
            Bool: false
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 13553342627057230147
        Name: "Inventory_Pickup_Server"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13112057175455967386
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 13112057175455967386
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SubObjectId: 8911118781814373440
            }
          }
          Overrides {
            Name: "cs:Inventory_Events"
            AssetReference {
              Id: 9805636833553611479
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 7153229304768253401
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2578883431720962284
        Name: "Client"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13112057175455967386
        ChildIds: 7191737863512348262
        ChildIds: 8306692957307677822
        ChildIds: 16351282491018167175
        ChildIds: 17680984206347212480
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
          MinDetailLevel {
            Value: "mc:edetaillevel:low"
          }
          MaxDetailLevel {
            Value: "mc:edetaillevel:ultra"
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 7191737863512348262
        Name: "Inventory Object Outline"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2578883431720962284
        TemplateInstance {
          ParameterOverrideMap {
            key: 3443521175387742296
            value {
              Overrides {
                Name: "Name"
                String: "Inventory Object Outline"
              }
              Overrides {
                Name: "Position"
                Vector {
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                }
              }
              Overrides {
                Name: "bp:Object To Outline"
                ObjectReference {
                  SubObjectId: 8306692957307677822
                }
              }
              Overrides {
                Name: "bp:Enabled"
                Bool: false
              }
              Overrides {
                Name: "bp:Dynamic Thickness"
                Bool: false
              }
              Overrides {
                Name: "bp:Thickness"
                Float: 1
              }
            }
          }
          TemplateAsset {
            Id: 107364086786845811
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8306692957307677822
        Name: "Item"
        Transform {
          Location {
            Z: 10.955986
          }
          Rotation {
          }
          Scale {
            X: 0.3
            Y: 0.3
            Z: 0.3
          }
        }
        ParentId: 2578883431720962284
        ChildIds: 16782708287128392760
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16782708287128392760
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: 42.6025429
            Y: -1.36899304
            Z: 12.0404053
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 2.94833326
            Y: 2.94833326
            Z: 2.94833326
          }
        }
        ParentId: 8306692957307677822
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 14848285228773047231
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 16351282491018167175
        Name: "Outline Trigger"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2578883431720962284
        TemplateInstance {
          ParameterOverrideMap {
            key: 17259491069621030325
            value {
              Overrides {
                Name: "Name"
                String: "Outline Trigger"
              }
            }
          }
          TemplateAsset {
            Id: 16799078388953106667
          }
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 17680984206347212480
        Name: "Inventory_Pickup_Client"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2578883431720962284
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 13112057175455967386
            }
          }
          Overrides {
            Name: "cs:Item"
            ObjectReference {
              SubObjectId: 8306692957307677822
            }
          }
          Overrides {
            Name: "cs:Outline"
            ObjectReference {
              SubObjectId: 17269209064211713827
            }
          }
          Overrides {
            Name: "cs:OutlineTrigger"
            ObjectReference {
              SubObjectId: 2068775284255138175
            }
          }
          Overrides {
            Name: "cs:PickupTrigger"
            ObjectReference {
              SubObjectId: 8911118781814373440
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 16570813441883333925
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 8911118781814373440
        Name: "Pickup Trigger"
        Transform {
          Scale {
            X: 2.72379947
            Y: 2.72379947
            Z: 2.72379947
          }
        }
        ParentId: 13112057175455967386
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:sphere"
          }
          InteractionTemplate {
          }
          BreadcrumbTemplate {
          }
        }
        InstanceHistory {
          SelfId: 4435490204986521121
          SubobjectId: 2859771732851525319
          InstanceId: 1991629962555291114
          TemplateId: 12185415287135871786
          WasRoot: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 14848285228773047231
      Name: "Bone Human Foot 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_foot_01_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 121
  VirtualFolderPath: "Inventory"
  VirtualFolderPath: "Item Templates"
}
