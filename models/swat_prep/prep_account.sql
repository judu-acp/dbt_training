SELECT 
        id                                                                      AS acc_id,
        parent_id                                                               AS parent_acc_id,
        name                                                                    AS acc_name,
        billing_street,
        billing_city,
        billing_postal_code,
        billing_country,
            
    CASE billing_state
    WHEN 'Alabama' THEN 'AL'
    WHEN 'Alabama' THEN 'AL' 
    WHEN 'Alaska' THEN 'AK' 
    WHEN 'Arizona' THEN 'AZ' 
    WHEN 'Arkansas' THEN 'AR' 
    WHEN 'California' THEN 'CA' 
    WHEN 'Colorado' THEN 'CO' 
    WHEN 'Connecticut' THEN 'CT' 
    WHEN 'Delaware' THEN 'DE' 
    WHEN 'District of Columbia' THEN 'DC' 
    WHEN 'Florida' THEN 'FL' 
    WHEN 'Georgia' THEN 'GA' 
    WHEN 'Hawaii' THEN 'HI' 
    WHEN 'Idaho' THEN 'ID' 
    WHEN 'Illinois' THEN 'IL' 
    WHEN 'Indiana' THEN 'IN' 
    WHEN 'Iowa' THEN 'IA' 
    WHEN 'Kansas' THEN 'KS' 
    WHEN 'Kentucky' THEN 'KY' 
    WHEN 'Louisiana' THEN 'LA' 
    WHEN 'Maine' THEN 'ME' 
    WHEN 'Maryland' THEN 'MD' 
    WHEN 'Massachusetts' THEN 'MA' 
    WHEN 'Michigan' THEN 'MI' 
    WHEN 'Minnesota' THEN 'MN' 
    WHEN 'Mississippi' THEN 'MS' 
    WHEN 'Missouri' THEN 'MO' 
    WHEN 'Montana' THEN 'MT' 
    WHEN 'Nebraska' THEN 'NE' 
    WHEN 'Nevada' THEN 'NV' 
    WHEN 'New Hampshire' THEN 'NH' 
    WHEN 'New Jersey' THEN 'NJ' 
    WHEN 'New Mexico' THEN 'NM' 
    WHEN 'New York' THEN 'NY' 
    WHEN 'North Carolina' THEN 'NC' 
    WHEN 'North Dakota' THEN 'ND' 
    WHEN 'Ohio' THEN 'OH' 
    WHEN 'Oklahoma' THEN 'OK' 
    WHEN 'Oregon' THEN 'OR' 
    WHEN 'Pennsylvania' THEN 'PA' 
    WHEN 'Rhode Island' THEN 'RI' 
    WHEN 'South Carolina' THEN 'SC' 
    WHEN 'South Dakota' THEN 'SD' 
    WHEN 'Tennessee' THEN 'TN' 
    WHEN 'Texas' THEN 'TX' 
    WHEN 'Utah' THEN 'UT' 
    WHEN 'Vermont' THEN 'VT' 
    WHEN 'Virginia' THEN 'VA' 
    WHEN 'Washington' THEN 'WA' 
    WHEN 'West Virginia' THEN 'WV' 
    WHEN 'Wisconsin' THEN 'WI' 
    WHEN 'Wyoming' THEN 'WY'
    
    WHEN 'AL' THEN 'AL' 
    WHEN 'AK' THEN 'AK' 
    WHEN 'AZ' THEN 'AZ' 
    WHEN 'AR' THEN 'AR' 
    WHEN 'CA' THEN 'CA' 
    WHEN 'CO' THEN 'CO' 
    WHEN 'CT' THEN 'CT' 
    WHEN 'DE' THEN 'DE' 
    WHEN 'DC' THEN 'DC' 
    WHEN 'FL' THEN 'FL' 
    WHEN 'GA' THEN 'GA' 
    WHEN 'HI' THEN 'HI' 
    WHEN 'ID' THEN 'ID' 
    WHEN 'IL' THEN 'IL' 
    WHEN 'IN' THEN 'IN' 
    WHEN 'IA' THEN 'IA' 
    WHEN 'KS' THEN 'KS' 
    WHEN 'KY' THEN 'KY' 
    WHEN 'LA' THEN 'LA' 
    WHEN 'ME' THEN 'ME' 
    WHEN 'MD' THEN 'MD' 
    WHEN 'MA' THEN 'MA' 
    WHEN 'MI' THEN 'MI' 
    WHEN 'MN' THEN 'MN' 
    WHEN 'MS' THEN 'MS' 
    WHEN 'MO' THEN 'MO' 
    WHEN 'MT' THEN 'MT' 
    WHEN 'NE' THEN 'NE' 
    WHEN 'NV' THEN 'NV' 
    WHEN 'NH' THEN 'NH' 
    WHEN 'NJ' THEN 'NJ' 
    WHEN 'NM' THEN 'NM' 
    WHEN 'NY' THEN 'NY' 
    WHEN 'NC' THEN 'NC' 
    WHEN 'ND' THEN 'ND' 
    WHEN 'OH' THEN 'OH' 
    WHEN 'OK' THEN 'OK' 
    WHEN 'OR' THEN 'OR' 
    WHEN 'PA' THEN 'PA' 
    WHEN 'RI' THEN 'RI' 
    WHEN 'SC' THEN 'SC' 
    WHEN 'SD' THEN 'SD' 
    WHEN 'TN' THEN 'TN' 
    WHEN 'TX' THEN 'TX' 
    WHEN 'UT' THEN 'UT' 
    WHEN 'VT' THEN 'VT' 
    WHEN 'VA' THEN 'VA' 
    WHEN 'WA' THEN 'WA' 
    WHEN 'WV' THEN 'WV' 
    WHEN 'WI' THEN 'WI' 
    WHEN 'WY' THEN 'WY' 
     
        ELSE NULL
END                                                         AS billing_state
    
    FROM {{ source('swat_usage', 'account')}}