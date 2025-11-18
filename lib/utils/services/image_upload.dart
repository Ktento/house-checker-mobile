import 'package:firebase_storage/firebase_storage.dart';
import 'package:house_check_mobile/models/investigator_model.dart';
import 'dart:io';
import 'package:path/path.dart' as p;
import '../../view_model/investigator_post_view_model.dart';

Future<void> uploadAllImages(InvestigationViewModel viewModel) async {
  final content = viewModel.record!.content;

  // 各フィールドごとに画像をアップロードして Firebase に保存
  if (content.adjacentBuildingRiskImages != null) {
    final urls = await uploadImages(content.adjacentBuildingRiskImages!);
    viewModel.updateImageFieldFirebase("adjacentBuildingImages", urls);
  }

  if (content.unevenSettlementImages != null) {
    final urls = await uploadImages(content.unevenSettlementImages!);
    viewModel.updateImageFieldFirebase("unevenSettlementImages", urls);
  }

  if (content.foundationDamageImages != null) {
    final urls = await uploadImages(content.foundationDamageImages!);
    viewModel.updateImageFieldFirebase("foundationDamageImages", urls);
  }

  if (content.firstFloorTiltImages != null) {
    final urls = await uploadImages(content.firstFloorTiltImages!);
    viewModel.updateImageFieldFirebase("firstFloorTiltImages", urls);
  }

  if (content.wallDamageImages != null) {
    final urls = await uploadImages(content.wallDamageImages!);
    viewModel.updateImageFieldFirebase("wallDamageImages", urls);
  }

  if (content.corrosionOrTermiteImages != null) {
    final urls = await uploadImages(content.corrosionOrTermiteImages!);
    viewModel.updateImageFieldFirebase("corrosionOrTermiteImages", urls);
  }

  if (content.roofTileImages != null) {
    final urls = await uploadImages(content.roofTileImages!);
    viewModel.updateImageFieldFirebase("roofTileImages", urls);
  }

  if (content.windowFrameImages != null) {
    final urls = await uploadImages(content.windowFrameImages!);
    viewModel.updateImageFieldFirebase("windowFrameImages", urls);
  }

  if (content.exteriorWetImages != null) {
    final urls = await uploadImages(content.exteriorWetImages!);
    viewModel.updateImageFieldFirebase("exteriorWetImages", urls);
  }

  if (content.exteriorDryImages != null) {
    final urls = await uploadImages(content.exteriorDryImages!);
    viewModel.updateImageFieldFirebase("exteriorDryImages", urls);
  }

  if (content.signageAndEquipmentImages != null) {
    final urls = await uploadImages(content.signageAndEquipmentImages!);
    viewModel.updateImageFieldFirebase("signageAndEquipmentImages", urls);
  }

  if (content.outdoorStairsImages != null) {
    final urls = await uploadImages(content.outdoorStairsImages!);
    viewModel.updateImageFieldFirebase("outdoorStairsImages", urls);
  }

  if (content.othersImages != null) {
    final urls = await uploadImages(content.othersImages!);
    viewModel.updateImageFieldFirebase("othersImages", urls);
  }
}

Future<List<String>> uploadImages(List<ImageInfo>? images) async {
  if (images == null) return [];

  List<String> updated = [];

  for (final image in images) {
    final url = await sendImage(image.localPath);
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
  try {
    final filePath = path;
    final filename = p.basename(filePath);
    final file = File(filePath);

// Create the file metadata
    final metadata = SettableMetadata(contentType: "image/jpeg");

// Create a reference to the Firebase Storage bucket
    final storageRef = FirebaseStorage.instance.ref();

    // Upload file and metadata to the path 'images/mountains.jpg'
    final uploadTask =
        storageRef.child("data/investigator$filename").putFile(file, metadata);
    // Wait until the upload is complete
    final snapshot = await uploadTask;
    // Get download URL
    final downloadUrl = await snapshot.ref.getDownloadURL();
    print(downloadUrl);
    return downloadUrl;
  } catch (e) {
    print("Upload failed: $e");
    return null;
  }
}
