<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Diamond Appraisal Form</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
  <div class="container my-5">
    <h1 class="text-center mb-4">Diamond Appraisal Form</h1>
    <form>
      <!-- Identification Details -->
      <div class="card mb-4">
        <div class="card-header">
          <h2>Identification Details</h2>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="clientName">Client Name</label>
            <input type="text" class="form-control" id="clientName" required>
          </div>
          <div class="form-group">
            <label for="clientAddress">Client Address</label>
            <input type="text" class="form-control" id="clientAddress" required>
          </div>
          <div class="form-group">
            <label for="clientPhone">Client Phone Number</label>
            <input type="tel" class="form-control" id="clientPhone" required>
          </div>
          <div class="form-group">
            <label for="clientEmail">Client Email</label>
            <input type="email" class="form-control" id="clientEmail" required>
          </div>
          <div class="form-group">
            <label for="appraisalDate">Date of Appraisal</label>
            <input type="date" class="form-control" id="appraisalDate" required>
          </div>
          <div class="form-group">
            <label for="appraisalLocation">Location of Appraisal</label>
            <input type="text" class="form-control" id="appraisalLocation" required>
          </div>
          <div class="form-group">
            <label for="appraiserName">Appraiser Name</label>
            <input type="text" class="form-control" id="appraiserName" required>
          </div>
          <div class="form-group">
            <label for="appraiserCert">Appraiser Certification/Qualifications</label>
            <input type="text" class="form-control" id="appraiserCert" required>
          </div>
          <div class="form-group">
            <label for="appraiserContact">Appraiser Contact Information</label>
            <input type="text" class="form-control" id="appraiserContact" required>
          </div>
        </div>
      </div>

      <!-- Diamond Specifications -->
      <div class="card mb-4">
        <div class="card-header">
          <h2>Diamond Specifications</h2>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="caratWeight">Carat Weight</label>
            <input type="number" class="form-control" id="caratWeight" required>
          </div>
          <div class="form-group">
            <label for="cut">Cut</label>
            <input type="text" class="form-control" id="cut" required>
          </div>
          <div class="form-group">
            <label for="color">Color</label>
            <input type="text" class="form-control" id="color" required>
          </div>
          <div class="form-group">
            <label for="clarity">Clarity</label>
            <input type="text" class="form-control" id="clarity" required>
          </div>
          <div class="form-group">
            <label for="shape">Shape</label>
            <input type="text" class="form-control" id="shape" required>
          </div>
        </div>
      </div>

      <!-- Certification and Grading Details -->
      <div class="card mb-4">
        <div class="card-header">
          <h2>Certification and Grading Details</h2>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="gradingReport">Grading Report Number</label>
            <input type="text" class="form-control" id="gradingReport" required>
          </div>
          <div class="form-group">
            <label for="gradingLab">Grading Laboratory</label>
            <input type="text" class="form-control" id="gradingLab" required>
          </div>
          <div class="form-group">
            <label for="gradingCriteria">Grading Criteria Used</label>
            <input type="text" class="form-control" id="gradingCriteria" required>
          </div>
          <div class="form-group">
            <label for="appraiserObservations">Appraiser?s Observations and Comments</label>
            <textarea class="form-control" id="appraiserObservations" rows="3"></textarea>
          </div>
        </div>
      </div>

      <!-- Provenance and Certification Details -->
      <div class="card mb-4">
        <div class="card-header">
          <h2>Provenance and Certification Details</h2>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="origin">Origin of Diamond (if known)</label>
            <input type="text" class="form-control" id="origin">
          </div>
          <div class="form-group">
            <label for="certificationLab">Certification Laboratory Name</label>
            <input type="text" class="form-control" id="certificationLab" required>
          </div>
          <div class="form-group">
            <label for="certificationNumber">Certification Number</label>
            <input type="text" class="form-control" id="certificationNumber" required>
          </div>
          <div class="form-group">
            <label for="certificationDate">Date of Certification</label>
            <input type="date" class="form-control" id="certificationDate" required>
          </div>
        </div>
      </div>

      <!-- Appraisal Value and Methodology -->
      <div class="card mb-4">
        <div class="card-header">
          <h2>Appraisal Value and Methodology</h2>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="appraisedValue">Appraised Value</label>
            <input type="number" class="form-control" id="appraisedValue" required>
          </div>
          <div class="form-group">
            <label for="methodology">Methodology Used to Determine Value</label>
            <textarea class="form-control" id="methodology" rows="3"></textarea>
          </div>
          <div class="form-group">
            <label for="marketData">Market Data Considered</label>
            <textarea class="form-control" id="marketData" rows="3"></textarea>
          </div>
        </div>
      </div>

      <!-- High-Quality Images for Visual Documentation -->
      <div class="card mb-4">
        <div class="card-header">
          <h2>High-Quality Images for Visual Documentation</h2>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="frontView">Front View</label>
            <input type="file" class="form-control-file" id="frontView" accept="image/*">
          </div>
          <div class="form-group">
            <label for="sideView">Side View</label>
            <input type="file" class="form-control-file" id="sideView" accept="image/*">
          </div>
          <div class="form-group">
            <label for="otherViews">Other Views</label>
            <input type="file" class="form-control-file" id="otherViews" accept="image/*">
          </div>
        </div>
      </div>

      <!-- Additional Comments and Special Considerations -->
      <div class="card mb-4">
        <div class="card-header">
          <h2>Additional Comments and Special Considerations</h2>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="additionalNotes">Additional Notes</label>
            <textarea class="form-control" id="additionalNotes" rows="3"></textarea>
          </div>
          <div class="form-group">
            <label for="specialFeatures">Special Features or Unusual Characteristics</label>
            <textarea class="form-control" id="specialFeatures" rows="3"></textarea>
          </div>
        </div>
      </div>

      <!-- Final Appraisal Value -->
      <div class="card mb-4">
        <div class="card-header">
          <h2>Final Appraisal Value</h2>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="finalValue">Determined Value</label>
            <input type="number" class="form-control" id="finalValue" required>
          </div>
          <div class="form-group">
            <label for="valueExplanation">Explanation for Value Determination</label>
            <textarea class="form-control" id="valueExplanation" rows="3"></textarea>
          </div>
        </div>
      </div>

      <!-- Submit Button -->
      <div class="text-center">
        <button type="submit" class="btn btn-primary">Submit Appraisal</button>
      </div>
    </form>
  </div>

  <!-- Bootstrap JS and dependencies -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
