@extends('layout.withsidebar')

@section('main')
<div class="col-sm-9 padding-right">
    <div class="product-details"><!--product-details-->
        <div class="col-sm-5">
            <div class="view-product">
                <img src="/BahanStudy/images/home/laptop10.png" alt="" />
                <h3>ZOOM</h3>
            </div>

        </div>
        <div class="col-sm-7">
            <div class="product-information"><!--/product-information-->
                <img src="/BahanStudy/images/product-details/new.jpg" class="newarrival" alt="" />
                <h2>Lenovo ThinkPad X280</h2>
                <p>Product id:</p>
                <span>
                    <span>US $59</span>
                    <label>Quantity:</label>
                    <input type="text" value="3" />
                    <button type="button" class="btn btn-fefault cart">
                        <i class="fa fa-shopping-cart"></i>
                        Add to cart
                    </button>
                </span>
                <p><b>Availability:</b> In Stock</p>
                <p><b>Condition:</b> New</p>
                <p><b>Brand:</b> E-SHOPPER</p>
                <a href=""><img src="/BahanStudy/images/product-details/share.png" class="share img-responsive"  alt="" /></a>
            </div><!--/product-information-->
        </div>
    </div><!--/product-details-->

    <div class="category-tab shop-details-tab"><!--category-tab-->
        <div class="col-sm-12">
            <ul class="nav nav-tabs">
                <li><a href="#details" data-toggle="tab">Spesifikasi</a></li>
            </ul>
        </div>
        <div class="tab-content">
            <div class="tab-pane fade" id="details" >
                
            </div>
            
            
        </div>
    </div><!--/category-tab-->
</div>
@endsection