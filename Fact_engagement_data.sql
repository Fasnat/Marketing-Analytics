SELECT
*
FROM
   dbo.engagement_data

 --Querry to clean and normalize the engagemnet_data table

 SELECT
      EngagementID,
      ContentID,
      CampaignID,
      ProductID,
      UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) As ContentType,
      LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) -1) As Views, -- Extracts the Views part from the ViewsClicksCombined column by taking the substring before the '-' character
      RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', viewsclickScombined)) As Clicks, -- Extracts the Clicks part from the ViewsClicksCombined column by taking the substring after the '-' character
      Likes,
      Format(convert(date,Engagementdate), 'dd.mm.yyyy') As EngagementDate
FROM
     dbo.engagement_data
WHERE
     ContentType != 'Newsletter'; -- Filters out rows where ContentType is 'Newsletter' as these are not relevant for our analysis

     
