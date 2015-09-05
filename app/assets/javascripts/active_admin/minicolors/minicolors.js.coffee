'use strict';

initMinicolorsPicker = (inputs, extra = {}) ->
  inputs.each ->
    item = $(this)
    options = $.extend(extra, item.data('minicolors'))
    item.data('minicolors', null)
    item.minicolors(options)

$(document).on 'has_many_add:after', '.has_many_container', (e, fieldset) ->
  initMinicolorsPicker(fieldset.find('.minicolors-input'))

$(document).ready ->
  initMinicolorsPicker($(".minicolors-input"))
  return
