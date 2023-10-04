function increaseQuantity(productId) {
    // Lấy số lượng hiện tại từ phần tử HTML
    var quantityElement = document.getElementById("quantity-" + productId);
    var currentQuantity = parseInt(quantityElement.innerText.split(' ')[1]);

    // Tăng số lượng lên 1
    var newQuantity = currentQuantity + 1;

    // Cập nhật số lượng trên giao diện người dùng
    quantityElement.innerText = 'x ' + newQuantity;

    // Gửi yêu cầu AJAX để cập nhật số lượng sản phẩm trên server
    sendUpdateRequest(productId, newQuantity);
}

function decreaseQuantity(productId) {
    // Lấy số lượng hiện tại từ phần tử HTML
    var quantityElement = document.getElementById("quantity-" + productId);
    var currentQuantity = parseInt(quantityElement.innerText.split(' ')[1]);

    // Giảm số lượng đi 1 nếu số lượng hiện tại lớn hơn 1
    if (currentQuantity > 1) {
        var newQuantity = currentQuantity - 1;

        // Cập nhật số lượng trên giao diện người dùng
        quantityElement.innerText = 'x ' + newQuantity;

        // Gửi yêu cầu AJAX để cập nhật số lượng sản phẩm trên server
        sendUpdateRequest(productId, newQuantity);
    }
}

function sendUpdateRequest(productId, newQuantity) {
    // Gửi yêu cầu AJAX để cập nhật số lượng sản phẩm trên server
    $.ajax({
        type: "POST",
        url: "/Store/UpdateQuantity",
        data: {
            productId: productId,
            newQuantity: newQuantity
        },
        success: function (data) {
            /*window.location.href = @url.Action("Store", "UpdateQuantity");*/
        },
        error: function () {
            console.error("Lỗi khi cập nhật số lượng sản phẩm trên server.");
        }
    });
}
