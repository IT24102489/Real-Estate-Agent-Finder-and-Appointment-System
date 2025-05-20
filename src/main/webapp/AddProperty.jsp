<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="robots" content="noindex,nofollow" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add Property | Prop Estate</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/globalProperty.css" rel="stylesheet">
    <link href="css/AddProperty.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
<!-- Include your header/navigation -->
<section id="header">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow_box" id="navbar_sticky">
        <div class="container-xl">
            <a class="text-black p-0 navbar-brand fw-bold logo_position_rel" href="propertyDashboard.jsp"> Estate <i class="fa fa-home col_blue me-1 logo_position_abs"></i> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="col_red">Agent</span></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mb-0 nav_left">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="propertyDashboard.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="AddProperty.jsp">Property Listing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="ViewProperty.jsp">Property Detail</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</section>

<!-- Hero Section -->
<section class="hero-section">
    <div class="hero-content">
        <h1>Add New Property</h1>
        <p class="subtitle">List your property with detailed information</p>
    </div>
</section>

<!-- Main Content -->
<div class="container form-container">
    <form action="addProperty" method="post" enctype="multipart/form-data">

        <!-- Listing Type Toggle -->
        <div class="listing-type-selector">
            <h1 class="section-label">I want to:</h1>
            <div class="toggle-wrapper">
                <div class="toggle-option" data-value="sell">
                    <i class="fa fa-tag"></i>
                    <span>Sell Property</span>
                </div>
                <div class="toggle-option" data-value="rent">
                    <i class="fa fa-key"></i>
                    <span>Rent Property</span>
                </div>
                <input type="hidden" id="listingType" name="listingType" value="sell">
            </div>
        </div>

        <!-- Basic Information -->
        <div class="form-section">
            <div class="section-header">
                <i class="fa fa-info-circle"></i>
                <h3>Basic Information</h3>
            </div>
            <div class="section-body">
                <div class="form-group">
                    <label for="title">Property Title</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="Enter a catchy title" required>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="propertyType">Property Type</label>
                        <select class="form-select" id="propertyType" name="propertyType" required>
                            <option value="" disabled selected>Select type</option>
                            <option value="land">Land</option>
                            <option value="apartment">Apartment</option>
                            <option value="house">House</option>
                            <option value="villa">Villa</option>
                            <option value="condo">Condo</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" name="description" rows="4" placeholder="Describe your property's unique features"></textarea>
                    </div>
                </div>
            </div>
        </div>

        <!-- Property Details -->
        <div class="form-section" id="propertyDetailsSection">
            <div class="section-header">
                <i class="fa fa-building"></i>
                <h3>Property Details</h3>
            </div>
            <div class="section-body">
                <div class="form-row">
                    <div class="form-group features-item" id="bedroomsField">
                        <div class="feature-icon">
                            <i class="fa fa-bed"></i>
                        </div>
                        <div class="feature-input">
                            <label for="bedrooms">Bedrooms</label>
                            <input type="number" class="form-control" id="bedrooms" name="bedrooms" min="0">
                        </div>
                    </div>

                    <div class="form-group features-item" id="bathroomsField">
                        <div class="feature-icon">
                            <i class="fa fa-bath"></i>
                        </div>
                        <div class="feature-input">
                            <label for="bathrooms">Bathrooms</label>
                            <input type="number" class="form-control" id="bathrooms" name="bathrooms" min="0" step="0.5">
                        </div>
                    </div>

                    <div class="form-group features-item">
                        <div class="feature-icon">
                            <i class="fa fa-expand"></i>
                        </div>
                        <div class="feature-input">
                            <label for="area">Area (sq ft)</label>
                            <input type="number" class="form-control" id="area" name="area" min="0" required>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Location -->
        <div class="form-section">
            <div class="section-header">
                <i class="fa fa-map-marker"></i>
                <h3>Location</h3>
            </div>
            <div class="section-body">
                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" name="address" placeholder="Street address" required>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="city">City</label>
                        <input type="text" class="form-control" id="city" name="city" required>
                    </div>



                    <div class="form-group">
                        <label for="zipCode">ZIP Code</label>
                        <input type="text" class="form-control" id="zipCode" name="zipCode" required>
                    </div>
                </div>
            </div>
        </div>

        <!-- Price Information -->
        <div class="form-section">
            <div class="section-header">
                <i class="fa fa-money"></i>
                <h3>Price Information</h3>
            </div>
            <div class="section-body">
                <div id="sellFields" style="display: block;">
                    <div class="form-group">
                        <label for="sellingPrice">Selling Price (Rs.)</label>
                        <div class="input-with-icon">
                            <span class="currency-text">Rs.</span>
                            <input type="number" class="form-control" id="sellingPrice" name="sellingPrice" min="0">
                        </div>
                    </div>

                    <div class="form-check custom-checkbox">
                        <input type="checkbox" class="form-check-input" id="priceNegotiable" name="priceNegotiable">
                        <label class="form-check-label" for="priceNegotiable">Price Negotiable</label>
                    </div>
                </div>

                <div id="rentFields" style="display: none;">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="monthlyRent">Monthly Rent (Rs.)</label>
                            <div class="input-with-icon">
                                <span class="currency-text">Rs.</span>
                                <input type="number" class="form-control" id="monthlyRent" name="monthlyRent" min="0">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="securityDeposit">Security Deposit (Rs.)</label>
                            <div class="input-with-icon">
                                <span class="currency-text">Rs.</span>
                                <input type="number" class="form-control" id="securityDeposit" name="securityDeposit" min="0">
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group">
                            <label for="leaseTerm">Lease Term</label>
                            <select class="form-select" id="leaseTerm" name="leaseTerm">
                                <option value="month">Monthly</option>
                                <option value="6months">6 Months</option>
                                <option value="1year">1 Year</option>
                                <option value="2years">2 Years</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="availableDate">Available Date</label>
                            <div class="input-with-icon date">
                                <i class="fa fa-calendar"></i>
                                <input type="date" class="form-control" id="availableDate" name="availableDate">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Amenities -->
        <div class="form-section" id="amenitiesSection">
            <div class="section-header">
                <i class="fa fa-star"></i>
                <h3>Amenities</h3>
            </div>
            <div class="section-body">
                <div class="amenities-grid">
                    <div class="amenity-item">
                        <input type="checkbox" class="amenity-checkbox" id="hasParking" name="hasParking">
                        <label for="hasParking">
                            <i class="fa fa-car"></i>
                            <span>Parking</span>
                        </label>
                    </div>
                    <div class="amenity-item">
                        <input type="checkbox" class="amenity-checkbox" id="hasSwimmingPool" name="hasSwimmingPool">
                        <label for="hasSwimmingPool">
                            <i class="fa fa-life-ring"></i>
                            <span>Swimming Pool</span>
                        </label>
                    </div>
                    <div class="amenity-item">
                        <input type="checkbox" class="amenity-checkbox" id="hasGarden" name="hasGarden">
                        <label for="hasGarden">
                            <i class="fa fa-leaf"></i>
                            <span>Garden</span>
                        </label>
                    </div>
                    <div class="amenity-item">
                        <input type="checkbox" class="amenity-checkbox" id="hasSecurity" name="hasSecurity">
                        <label for="hasSecurity">
                            <i class="fas fa-shield-alt"></i>
                            <span>Security</span>
                        </label>
                    </div>
                    <div class="amenity-item">
                        <input type="checkbox" class="amenity-checkbox" id="hasElevator" name="hasElevator">
                        <label for="hasElevator">
                            <i class="fa fa-arrow-up"></i>
                            <span>Elevator</span>
                        </label>
                    </div>
                    <div class="amenity-item">
                        <input type="checkbox" class="amenity-checkbox" id="hasAirConditioning" name="hasAirConditioning">
                        <label for="hasAirConditioning">
                            <i class="fa fa-snowflake"></i>
                            <span>Air Conditioning</span>
                        </label>
                    </div>
                    <div class="amenity-item">
                        <input type="checkbox" class="amenity-checkbox" id="hasGym" name="hasGym">
                        <label for="hasGym">
                            <i class="fa fa-heartbeat"></i>
                            <span>Gym</span>
                        </label>
                    </div>
                    <div class="amenity-item">
                        <input type="checkbox" class="amenity-checkbox" id="hasBalcony" name="hasBalcony">
                        <label for="hasBalcony">
                            <i class="far fa-building"></i>
                            <span>Balcony</span>
                        </label>
                    </div>
                </div>
            </div>
        </div>

        <!-- Image Upload -->
        <div class="form-section">
            <div class="section-header">
                <i class="fa fa-image"></i>
                <h3>Property Images</h3>
            </div>
            <div class="section-body">
                <div id="drop-area">
                    <div class="upload-icon">
                        <i class="fa fa-cloud-upload"></i>
                    </div>
                    <p>Drag and drop images here</p>
                    <span>or</span>
                    <button type="button" class="browse-btn">Browse Files</button>
                    <input type="file" id="imageFile" name="imageFile" accept="image/*" style="display: none;">
                    <div class="preview-container">
                        <img id="preview" style="display: none;" alt="Preview">
                        <span class="filename"></span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Error Message Display -->
        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
        <div class="alert-message error">
            <i class="fa fa-exclamation-circle"></i>
            <%= errorMessage %>
        </div>
        <% } %>

        <!-- Submit Buttons -->
        <div class="action-buttons">
            <a href="ViewProperty.jsp" class="btn btn-cancel">Cancel</a>
            <button type="submit" class="btn btn-submit">
                <i class="fa fa-check"></i>
                Add Property
            </button>
        </div>
    </form>
</div>

<script src="js/bootstrap.bundle.min.js"></script>
<script>
    // Toggle between rent and sell fields
    document.addEventListener('DOMContentLoaded', function() {
        const toggleOptions = document.querySelectorAll('.toggle-option');
        const listingTypeInput = document.getElementById('listingType');
        const sellFields = document.getElementById('sellFields');
        const rentFields = document.getElementById('rentFields');
        const propertyTypeSelect = document.getElementById('propertyType');
        const bedroomsField = document.getElementById('bedroomsField');
        const bathroomsField = document.getElementById('bathroomsField');
        const amenitiesSection = document.getElementById('amenitiesSection');

        // Function to toggle fields based on property type
        function toggleFieldsByPropertyType() {
            const selectedType = propertyTypeSelect.value;

            if (selectedType === 'land') {
                // Hide bedroom and bathroom fields for land
                if (bedroomsField) bedroomsField.style.display = 'none';
                if (bathroomsField) bathroomsField.style.display = 'none';

                // Hide amenities section for land
                if (amenitiesSection) amenitiesSection.style.display = 'none';
            } else {
                // Show bedroom and bathroom fields for non-land properties
                if (bedroomsField) bedroomsField.style.display = 'flex';
                if (bathroomsField) bathroomsField.style.display = 'flex';

                // Show amenities section for non-land properties
                if (amenitiesSection) amenitiesSection.style.display = 'block';
            }
        }

        // Add event listener to property type select
        if (propertyTypeSelect) {
            propertyTypeSelect.addEventListener('change', toggleFieldsByPropertyType);
        }

        // Set initial state for toggle options
        toggleOptions[0].classList.add('active');

        toggleOptions.forEach(option => {
            option.addEventListener('click', function() {
                // Remove active class from all options
                toggleOptions.forEach(opt => opt.classList.remove('active'));

                // Add active class to clicked option
                this.classList.add('active');

                // Update hidden input value
                const value = this.getAttribute('data-value');
                listingTypeInput.value = value;

                // Toggle visibility of fields
                if (value === 'sell') {
                    sellFields.style.display = 'block';
                    rentFields.style.display = 'none';
                } else {
                    sellFields.style.display = 'none';
                    rentFields.style.display = 'block';
                }
            });
        });

        // Initialize the form state based on current listing type
        if (listingTypeInput) {
            if (!listingTypeInput.value || listingTypeInput.value === "") {
                listingTypeInput.value = 'sell';
            }

            // Find and click the corresponding toggle option
            const activeOption = document.querySelector(`.toggle-option[data-value="${listingTypeInput.value}"]`);
            if (activeOption) {
                activeOption.click();
            }
        }

        // Initial check for property type on page load
        toggleFieldsByPropertyType();
    });

    // File handling for image uploads
    document.addEventListener('DOMContentLoaded', function() {
        const dropArea = document.getElementById('drop-area');
        const fileInput = document.getElementById('imageFile');
        const preview = document.getElementById('preview');
        const browseBtn = document.querySelector('.browse-btn');
        const filenameDisplay = document.querySelector('.filename');

        if (browseBtn) {
            browseBtn.addEventListener('click', () => fileInput.click());
        }

        dropArea.addEventListener('dragover', e => {
            e.preventDefault();
            dropArea.classList.add('active');
        });

        dropArea.addEventListener('dragleave', () => {
            dropArea.classList.remove('active');
        });

        dropArea.addEventListener('drop', e => {
            e.preventDefault();
            dropArea.classList.remove('active');
            fileInput.files = e.dataTransfer.files;
            showPreview(fileInput.files[0]);
        });

        fileInput.addEventListener('change', () => {
            if (fileInput.files.length > 0) {
                showPreview(fileInput.files[0]);
            }
        });

        function showPreview(file) {
            if (!file) return;

            const reader = new FileReader();
            reader.onload = e => {
                preview.src = e.target.result;
                preview.style.display = 'block';
                if (filenameDisplay) {
                    filenameDisplay.textContent = file.name;
                }
                dropArea.classList.add('has-preview');
            };
            reader.readAsDataURL(file);
        }
    });
</script>
</body>
</html>