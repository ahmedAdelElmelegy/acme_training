class NotificationService {
  void showNotification(String type, String message) {
    if (type == "success") {
      print("✅ نجاح: $message");
    } else if (type == "error") {
      print("❌ خطأ: $message");
    } else if (type == "warning") {
      print("⚠️ تحذير: $message");
    } else {
      print("ℹ️ معلومات: $message");
    }
  }
}
// when add another typee i will modifiy
// and open close add more feature without   modificaions

// void main() {
//   final service = NotificationService();
//   service.showNotification("success", "تمت العملية بنجاح");
//   service.showNotification("error", "حدث خطأ في العملية");
// }
