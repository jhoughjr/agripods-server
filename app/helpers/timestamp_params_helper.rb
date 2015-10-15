module TimestampParamsHelper
  def scrubbedParams(timestamp_params)
    year = humidity_params["measuredAt(1i)"].to_i
    month = humidity_params["measuredAt(2i)"].to_i
    day = humidity_params["measuredAt(3i)"].to_i
    hour = humidity_params["measuredAt(4i)"].to_i
    minute = humidity_params["measuredAt(5i)"].to_i

    dateTimeFromParams = DateTime.new(year, month, day, hour, minute)
    excludedParams = ["measuredAt(1i)","measuredAt(2i)","measuredAt(3i)","measuredAt(4i)","measuredAt(5i)"]

    theParams = humidity_params.except(*excludedParams)
    theParams[:measuredAt] = dateTimeFromParams
    # byebug
    return theParams
  end
end
