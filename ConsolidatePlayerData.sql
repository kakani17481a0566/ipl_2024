USE [ipl_2024]
GO
/****** Object:  StoredProcedure [dbo].[ConsolidatePlayerData]    Script Date: 11/30/2024 10:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[ConsolidatePlayerData]
AS
BEGIN
    -- Clear existing data from all_players to avoid duplicates
    TRUNCATE TABLE all_players;

    -- Insert data from each team table into all_players
    INSERT INTO all_players (player_name, base_price, winning_bid, capped_status, team)
    SELECT player_name, base_price, winning_bid, capped_status, 'CSK' AS team
    FROM CSK;

    INSERT INTO all_players (player_name, base_price, winning_bid, capped_status, team)
    SELECT player_name, base_price, winning_bid, capped_status, 'DC' AS team
    FROM DC;

    INSERT INTO all_players (player_name, base_price, winning_bid, capped_status, team)
    SELECT player_name, base_price, winning_bid, capped_status, 'GT' AS team
    FROM GT;

    INSERT INTO all_players (player_name, base_price, winning_bid, capped_status, team)
    SELECT player_name, base_price, winning_bid, capped_status, 'KKR' AS team
    FROM KKR;

    INSERT INTO all_players (player_name, base_price, winning_bid, capped_status, team)
    SELECT player_name, base_price, winning_bid, capped_status, 'KXIP' AS team
    FROM KXIP;

    INSERT INTO all_players (player_name, base_price, winning_bid, capped_status, team)
    SELECT player_name, base_price, winning_bid, capped_status, 'LSG' AS team
    FROM LSG;

    INSERT INTO all_players (player_name, base_price, winning_bid, capped_status, team)
    SELECT player_name, base_price, winning_bid, capped_status, 'MI' AS team
    FROM MI;

    INSERT INTO all_players (player_name, base_price, winning_bid, capped_status, team)
    SELECT player_name, base_price, winning_bid, capped_status, 'RCB' AS team
    FROM RCB;

    INSERT INTO all_players (player_name, base_price, winning_bid, capped_status, team)
    SELECT player_name, base_price, winning_bid, capped_status, 'RR' AS team
    FROM RR;

    INSERT INTO all_players (player_name, base_price, winning_bid, capped_status, team)
    SELECT player_name, base_price, winning_bid, capped_status, 'SRH' AS team
    FROM SRH;
END;
