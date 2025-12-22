import 'package:firebase_storage/firebase_storage.dart';
import 'package:house_check_mobile/models/investigator_model.dart';
import 'package:house_check_mobile/view_model/investigator_post/steelFrame_view_model.dart';
import 'package:house_check_mobile/view_model/investigator_post/rebar_view_model.dart';
import 'package:house_check_mobile/view_model/investigator_post/wooden_view_model.dart';
import 'dart:io';
import 'package:path/path.dart' as p;

Future<void> uploadAllImages(
    {WoodenViewModel? woodenViewModel,
    SteelFrameViewModel? steelFrameViewModel,
    RebarViewModel? rebarViewModel}) async {
  final content;
  if (woodenViewModel != null) {
    content = woodenViewModel.woodenRecord!.content;
    // WoodenContent 用の画像フィールド
    final fields = {
      "adjacentBuildingRiskImages": content.adjacentBuildingRiskImages,
      "unevenSettlementImages": content.unevenSettlementImages,
      "foundationDamageImages": content.foundationDamageImages,
      "firstFloorTiltImages": content.firstFloorTiltImages,
      "wallDamageImages": content.wallDamageImages,
      "corrosionOrTermiteImages": content.corrosionOrTermiteImages,
      "roofTileImages": content.roofTileImages,
      "windowFrameImages": content.windowFrameImages,
      "exteriorWetImages": content.exteriorWetImages,
      "exteriorDryImages": content.exteriorDryImages,
      "signageAndEquipmentImages": content.signageAndEquipmentImages,
      "outdoorStairsImages": content.outdoorStairsImages,
      "othersImages": content.othersImages,
    };

    for (var entry in fields.entries) {
      final images = entry.value;
      if (images.isNotEmpty) {
        final uploadUrls = await uploadImages(images);
        final localUrls =
            images.map<String>((ImagePaths i) => i.localPath).toList();
        woodenViewModel.updateImageFieldFirebase(
            entry.key, localUrls, uploadUrls);
      }
    }
  } else if (steelFrameViewModel != null) {
    content = steelFrameViewModel.steelFrameRecord!.content;

    // SteelFrameContent 用の画像フィールド
    final fields = {
      "adjacentBuildingRiskImages": content.adjacentBuildingRiskImages,
      "unevenSettlementImages": content.unevenSettlementImages,
      "upperFloorLe1Images": content.upperFloorLe1Images,
      "upperFloorLe2Images": content.upperFloorLe2Images,
      "hasBucklingImages": content.hasBucklingImages,
      "bracingBreakRateImages": content.bracingBreakRateImages,
      "jointFailureImages": content.jointFailureImages,
      "columnBaseDamageImages": content.columnBaseDamageImages,
      "corrosionImages": content.corrosionImages,
      "roofingMaterialImages": content.roofingMaterialImages,
      "windowFrameImages": content.windowFrameImages,
      "exteriorWetImages": content.exteriorWetImages,
      "exteriorDryImages": content.exteriorDryImages,
      "signageAndEquipmentImages": content.signageAndEquipmentImages,
      "outdoorStairsImages": content.outdoorStairsImages,
      "othersImages": content.othersImages,
    };

    for (var entry in fields.entries) {
      final images = entry.value;
      if (images.isNotEmpty) {
        final uploadUrls = await uploadImages(images);
        final localUrls =
            images.map<String>((ImagePaths i) => i.localPath).toList();
        steelFrameViewModel.updateImageFieldFirebase(
            entry.key, localUrls, uploadUrls);
      }
    }
  } else if (rebarViewModel != null) {
    content = rebarViewModel.rebarRecord!.content;

    // RebarContent 用の画像フィールド
    final fields = {
      "hasSevereDamageMembersImages": content.hasSevereDamageMembersImages,
      "adjacentBuildingRiskImages": content.adjacentBuildingRiskImages,
      "groundFailureInclinationImages": content.groundFailureInclinationImages,
      "unevenSettlementImages": content.unevenSettlementImages,
      "percentColumnsDamageLevel5Images":
          content.percentColumnsDamageLevel5Images,
      "percentColumnsDamageLevel4Images":
          content.percentColumnsDamageLevel4Images,
      "windowFrameImages": content.windowFrameImages,
      "exteriorMaterialMortarTileStoneImages":
          content.exteriorMaterialMortarTileStoneImages,
      "exteriorMaterialALCPCMetalBlockImages":
          content.exteriorMaterialALCPCMetalBlockImages,
      "signageAndEquipmentImages": content.signageAndEquipmentImages,
      "outdoorStairsImages": content.outdoorStairsImages,
      "othersImages": content.othersImages,
    };

    for (var entry in fields.entries) {
      final images = entry.value;
      if (images.isNotEmpty) {
        final uploadUrls = await uploadImages(images);
        final localUrls =
            images.map<String>((ImagePaths i) => i.localPath).toList();
        rebarViewModel.updateImageFieldFirebase(
            entry.key, localUrls, uploadUrls);
      }
    }
  } else {
    print("エラー(uploadAllImages)：viewmodelがありません");
    return;
  }
}

Future<List<String>> uploadImages(List<ImagePaths>? images) async {
  if (images == null) return [];

  List<String> updated = [];

  for (final image in images) {
    final url = await sendImage(image.localPath);
    print(url);
    if (url != null) {
      updated.add(url);
    } else {
      // アップロード失敗時はローカルパスのみ保持
      updated.add("");
    }
  }

  return updated;
}

Future<String?> sendImage(String path) async {
  final filePath = path;
  try {
    final filename = p.basename(filePath);
    final file = File(filePath);

// Create the file metadata
    final metadata = SettableMetadata(contentType: "image/jpeg");

// Create a reference to the Firebase Storage bucket
    final storageRef = FirebaseStorage.instance.ref();

    // Upload file and metadata to the path 'images/mountains.jpg'
    final uploadTask =
        storageRef.child("data/investigator/$filename").putFile(file, metadata);
    // Wait until the upload is complete
    final snapshot = await uploadTask;
    // Get download URL
    final downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  } catch (e) {
    print("エラー(sendImage):$e");
    return null;
  }
}
