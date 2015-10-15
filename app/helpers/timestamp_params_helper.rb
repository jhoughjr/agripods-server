module TimestampParamsHelper

  def packTimestampParams(timestamp_params)
    year = timestamp_params["measuredAt(1i)"].to_i
    month = timestamp_params["measuredAt(2i)"].to_i
    day = timestamp_params["measuredAt(3i)"].to_i
    hour = timestamp_params["measuredAt(4i)"].to_i
    minute = timestamp_params["measuredAt(5i)"].to_i

    dateTimeFromParams = DateTime.new(year, month, day, hour, minute)
    excludedParams = ["measuredAt(1i)","measuredAt(2i)","measuredAt(3i)","measuredAt(4i)","measuredAt(5i)"]

    theParams = timestamp_params.except(*excludedParams)
    theParams[:measuredAt] = dateTimeFromParams
    return theParams
  end
end
