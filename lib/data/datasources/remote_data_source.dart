abstract class RemoteDataSource {
  Future<List<Map<String, dynamic>>> getDataList(String collectionName);

  Future<Map<String, dynamic>> getData(String documentId);

  Future<String> addData(String collectionPath, Map<String, dynamic> data);

  Future<String> setData(String collectionPath, Map<String, dynamic> data);

  Future<String> deleteData(String collectionPath, Map<String, dynamic> data);
}
