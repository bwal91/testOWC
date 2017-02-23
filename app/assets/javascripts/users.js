jQuery(function() {
	return $('#user_name').autocomplete({
		source: $('#user_name').data('autocomplete-source')
	});
});



// app.Users = function() {
// 	this._input = $('#recipients-search')
// 	this._initAutocomplete();
// };

// app.Users.prototype = {

// };

// _initAutocomplete: function() {
// 	this._input
// 		.autocomplete({
// 			source: '/conversations',
// 			appendTo: '#recipients-search',
// 			select: $.proxy(this._select, this)
// 		})
// 		.autocomplete('instance')._renderItem = $.proxy(this._render, this);
// }
// _select: function(e, ui) {
// 	this._input.val(ui.item.first_name + ' - ' + ui.item.last_name);
// 	return false;
// }

// _render: function(ul, item) {
//   var markup = [
//     '<span class="first_name">' + item.first_name + '</span>',
//     '<span class="last_name">' + item.last_name + '</span>',
//   ];
//   return $('<li>')
//     .append(markup.join(''))
//     .appendTo(ul);
// }
