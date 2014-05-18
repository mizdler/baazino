$(document).ready(function() {
	// Smart Wizard
	$('#wizard').smartWizard({
		labelNext : 'بعدی', // label for Next button
		labelPrevious : 'قبلی', // label for Previous button
		labelFinish : 'پایان',  // label for Finish button
	});
	$('#wizardVertical').smartWizard({
		transitionEffect : 'slide'
	});

	function onFinishCallback() {
		$('#wizard').smartWizard('showMessage', 'Finish Clicked');
		//alert('Finish Clicked');
	}

});
