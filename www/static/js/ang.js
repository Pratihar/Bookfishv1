var app1 = angular.module('app1', []);

app1.controller('ctrl1', function($scope){

	// Define initial values
    $scope.imgLoading = true;
 
	// Change the value for calculation when the button is clicked
    // I used a shortcut using the unary plus operator to convert
    // the string number values which are then added

    $scope.$watch('$viewContentLoaded', function() {
    	$scope.imgLoading = false;
	    //Here your view content is fully loaded !!
	  });
    
});