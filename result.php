<?php include "header.php" ?>


<!-- News With Sidebar Start -->
<div class="container-fluid mt-5 pt-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h4 class="m-0 text-uppercase font-weight-bold">Result: 5 item(s)</h4>
                            <a class="text-secondary font-weight-medium text-decoration-none" href="">View All</a>
                        </div>
                    </div>
                    <?php

                    ?>
                    <?php
                    // Kiểm tra nếu có từ khóa được gửi qua GET
                    if (isset($_GET['keyword'])) {
                        $keyword = $_GET['keyword'];
                        $start = 0;
                        $count = 5; // Số lượng kết quả hiển thị mỗi trang

                        // Tạo đối tượng từ lớp có chứa hàm search và searchCount
                        $item = new Item(); // Giả sử lớp Item có các hàm search và searchCount

                        // Lấy kết quả tìm kiếm và số lượng kết quả
                        $searchResults = $item->search($keyword, $start, $count);
                        $searchCount = $item->searchCount($keyword);




                        // Kiểm tra và hiển thị kết quả tìm kiếm
                        if ($searchCount > 0) {
                            foreach ($searchResults as $value) {
                    ?>
                                <div class="col-lg-6">
                                    <div class="position-relative mb-3">
                                        <img class="img-fluid w-100" src="img/<?php echo $value['image']; ?>" style="object-fit: cover;">
                                        <div class="bg-white border border-top-0 p-4">
                                            <div class="mb-2">
                                                <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2" href=""><?php echo $item->getCatNameById($value['category'])[0]['name']; ?></a>
                                                <a class="text-body" href=""><small><?php echo date_format(date_create_from_format("Y-m-d H:i:s", $value['created_at']), "M, d Y"); ?></small></a>
                                            </div>
                                            <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href=""><?php echo $value['title']; ?></a>
                                            <p class="m-0"><?php echo $value['excerpt']; ?></p>
                                        </div>
                                        <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                                            <div class="d-flex align-items-center">
                                                <img class="rounded-circle mr-2" src="img/user.jpg" width="25" height="25" alt="">
                                                <small><?php echo $value['author']; ?></small>
                                            </div>
                                            <div class="d-flex align-items-center">
                                                <small class="ml-3"><i class="far fa-eye mr-2"></i><?php echo $value['views']; ?></small>
                                                <small class="ml-3"><i class="far fa-comment mr-2"></i>123</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                    <?php
                            }
                        } else {
                            echo "<p>Không tìm thấy kết quả nào cho từ khóa '$keyword'.</p>";
                        }
                    } else {
                        echo "Vui lòng nhập từ khóa tìm kiếm.";
                    }

                    ?>

                </div>

            </div>

            <div class="col-lg-4">
                <?php include "social-sidebar.php" ?>
            </div>
        </div>
    </div>
</div>
<!-- News With Sidebar End -->


<?php include "footer.php" ?>