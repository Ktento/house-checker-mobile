import 'package:firebase_storage/firebase_storage.dart';
import 'package:house_check_mobile/models/investigator_model.dart';
import 'package:house_check_mobile/utils/helpers/damageLevel.dart';
import 'dart:io';
import 'package:path/path.dart' as p;
import '../../view_model/investigator_post_view_model.dart';

Future<void> uploadAllImages(InvestigationViewModel viewModel) async {
  final content = viewModel.record!.content;

  // 各フィールドごとに画像をアップロードして Firebase に保存
  if (content.adjacentBuildingRiskImages != null) {
    final uploadUrls = await uploadImages(content.adjacentBuildingRiskImages!);
    final localUrls = (content.adjacentBuildingRiskImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "adjacentBuildingRiskImages", localUrls, uploadUrls);
  }

  if (content.unevenSettlementImages != null) {
    final uploadUrls = await uploadImages(content.unevenSettlementImages!);
    final localUrls = (content.unevenSettlementImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "unevenSettlementImages", localUrls, uploadUrls);
  }

  if (content.foundationDamageImages != null) {
    final uploadUrls = await uploadImages(content.foundationDamageImages!);
    final localUrls = (content.foundationDamageImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "foundationDamageImages", localUrls, uploadUrls);
  }

  if (content.firstFloorTiltImages != null) {
    final uploadUrls = await uploadImages(content.firstFloorTiltImages!);
    final localUrls = (content.firstFloorTiltImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "firstFloorTiltImages", localUrls, uploadUrls);
  }

  if (content.wallDamageImages != null) {
    final uploadUrls = await uploadImages(content.wallDamageImages!);
    final localUrls = (content.wallDamageImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "wallDamageImages", localUrls, uploadUrls);
  }

  if (content.corrosionOrTermiteImages != null) {
    final uploadUrls = await uploadImages(content.corrosionOrTermiteImages!);
    final localUrls = (content.corrosionOrTermiteImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "corrosionOrTermiteImages", localUrls, uploadUrls);
  }

  if (content.roofTileImages != null) {
    final uploadUrls = await uploadImages(content.roofTileImages!);
    final localUrls =
        (content.roofTileImages ?? []).map((image) => image.localPath).toList();
    viewModel.updateImageFieldFirebase("roofTileImages", localUrls, uploadUrls);
  }

  if (content.windowFrameImages != null) {
    final uploadUrls = await uploadImages(content.windowFrameImages!);
    final localUrls = (content.windowFrameImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "windowFrameImages", localUrls, uploadUrls);
  }

  if (content.exteriorWetImages != null) {
    final uploadUrls = await uploadImages(content.exteriorWetImages!);
    final localUrls = (content.exteriorDryImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "exteriorWetImages", localUrls, uploadUrls);
  }

  if (content.exteriorDryImages != null) {
    final uploadUrls = await uploadImages(content.exteriorDryImages!);
    final localUrls = (content.exteriorDryImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "exteriorDryImages", localUrls, uploadUrls);
  }

  if (content.signageAndEquipmentImages != null) {
    final uploadUrls = await uploadImages(content.signageAndEquipmentImages!);
    final localUrls = (content.signageAndEquipmentImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "signageAndEquipmentImages", localUrls, uploadUrls);
  }

  if (content.outdoorStairsImages != null) {
    final uploadUrls = await uploadImages(content.outdoorStairsImages!);
    final localUrls = (content.outdoorStairsImages ?? [])
        .map((image) => image.localPath)
        .toList();
    viewModel.updateImageFieldFirebase(
        "outdoorStairsImages", localUrls, uploadUrls);
  }

  if (content.othersImages != null) {
    final uploadUrls = await uploadImages(content.othersImages!);
    final localUrls =
        (content.othersImages ?? []).map((image) => image.localPath).toList();
    viewModel.updateImageFieldFirebase("othersImages", localUrls, uploadUrls);
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
    print("filepath:$filePath");
    print("downloadUrl:$downloadUrl");
    return downloadUrl;
  } catch (e) {
    print("filepath:$filePath");
    print("Upload failed: $e");
    return null;
  }
}
