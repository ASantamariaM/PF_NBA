USE [master]
GO
/****** Object:  Database [Sportics_LAM]    Script Date: 28/9/2024 00:04:36 ******/
CREATE DATABASE [Sportics_LAM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sportics_LAM_Data', FILENAME = N'C:\SQL_BD\Sportics_LAM_Data.mdf' , SIZE = 51200KB , MAXSIZE = 1048576KB , FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'Carrera_BD_log', FILENAME = N'C:\SQL_BD\Sportics_LAM_Log.ldf' , SIZE = 25600KB , MAXSIZE = 262144KB , FILEGROWTH = 5120KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Sportics_LAM] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sportics_LAM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sportics_LAM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sportics_LAM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sportics_LAM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sportics_LAM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sportics_LAM] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sportics_LAM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Sportics_LAM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sportics_LAM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sportics_LAM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sportics_LAM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sportics_LAM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sportics_LAM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sportics_LAM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sportics_LAM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sportics_LAM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Sportics_LAM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sportics_LAM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sportics_LAM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sportics_LAM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sportics_LAM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sportics_LAM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sportics_LAM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sportics_LAM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sportics_LAM] SET  MULTI_USER 
GO
ALTER DATABASE [Sportics_LAM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sportics_LAM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sportics_LAM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sportics_LAM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sportics_LAM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sportics_LAM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Sportics_LAM] SET QUERY_STORE = ON
GO
ALTER DATABASE [Sportics_LAM] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Sportics_LAM]
GO
/****** Object:  User [soporte]    Script Date: 28/9/2024 00:04:36 ******/
CREATE USER [soporte] FOR LOGIN [soporte] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[filtered_common_player_info]    Script Date: 28/9/2024 00:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[filtered_common_player_info](
	[person_id] [int] NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[display_first_last] [nvarchar](50) NOT NULL,
	[display_last_comma_first] [nvarchar](50) NOT NULL,
	[display_fi_last] [nvarchar](50) NOT NULL,
	[player_slug] [nvarchar](50) NOT NULL,
	[birthdate] [datetime2](7) NOT NULL,
	[school] [nvarchar](50) NOT NULL,
	[country] [nvarchar](50) NOT NULL,
	[last_affiliation] [nvarchar](50) NOT NULL,
	[height] [time](7) NOT NULL,
	[weight] [float] NOT NULL,
	[season_exp] [float] NOT NULL,
	[jersey] [tinyint] NOT NULL,
	[position] [nvarchar](50) NOT NULL,
	[rosterstatus] [nvarchar](50) NOT NULL,
	[games_played_current_season_flag] [nvarchar](50) NOT NULL,
	[team_id] [int] NOT NULL,
	[team_name] [nvarchar](50) NOT NULL,
	[team_abbreviation] [nvarchar](50) NOT NULL,
	[team_code] [nvarchar](50) NOT NULL,
	[team_city] [nvarchar](50) NOT NULL,
	[playercode] [nvarchar](50) NOT NULL,
	[from_year] [float] NOT NULL,
	[to_year] [float] NOT NULL,
	[dleague_flag] [bit] NOT NULL,
	[nba_flag] [nvarchar](50) NOT NULL,
	[games_played_flag] [nvarchar](50) NOT NULL,
	[draft_year] [smallint] NULL,
	[draft_round] [tinyint] NULL,
	[draft_number] [tinyint] NULL,
	[greatest_75_flag] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FILTRADO 2022-2023 NBA Player Stats - Playoffs - Hoja 1]    Script Date: 28/9/2024 00:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FILTRADO 2022-2023 NBA Player Stats - Playoffs - Hoja 1](
	[Rk] [tinyint] NOT NULL,
	[Player] [nvarchar](50) NOT NULL,
	[Pos] [nvarchar](50) NOT NULL,
	[Age] [tinyint] NOT NULL,
	[Tm] [nvarchar](50) NOT NULL,
	[G] [tinyint] NOT NULL,
	[GS] [tinyint] NOT NULL,
	[MP] [float] NOT NULL,
	[FG] [float] NOT NULL,
	[FGA] [float] NOT NULL,
	[FG1] [float] NOT NULL,
	[_3P] [float] NOT NULL,
	[_3PA] [float] NOT NULL,
	[_3P1] [smallint] NOT NULL,
	[_2P] [float] NOT NULL,
	[_2PA] [float] NOT NULL,
	[_2P1] [float] NOT NULL,
	[eFG] [float] NOT NULL,
	[FT] [float] NOT NULL,
	[FTA] [float] NOT NULL,
	[FT1] [float] NOT NULL,
	[ORB] [float] NOT NULL,
	[DRB] [float] NOT NULL,
	[TRB] [float] NOT NULL,
	[AST] [float] NOT NULL,
	[STL] [float] NOT NULL,
	[BLK] [float] NOT NULL,
	[TOV] [float] NOT NULL,
	[PF] [float] NOT NULL,
	[PTS] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FILTRADO 2022-2023 NBA Player Stats - Regular - Hoja 1]    Script Date: 28/9/2024 00:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FILTRADO 2022-2023 NBA Player Stats - Regular - Hoja 1](
	[Rk] [smallint] NOT NULL,
	[Player] [nvarchar](50) NOT NULL,
	[Pos] [nvarchar](50) NOT NULL,
	[Age] [tinyint] NOT NULL,
	[Tm] [nvarchar](50) NOT NULL,
	[G] [tinyint] NOT NULL,
	[GS] [tinyint] NOT NULL,
	[MP] [float] NOT NULL,
	[FG] [float] NOT NULL,
	[FGA] [float] NOT NULL,
	[FG1] [float] NOT NULL,
	[_3P] [float] NOT NULL,
	[_3PA] [float] NOT NULL,
	[_3P1] [float] NOT NULL,
	[_2P] [float] NOT NULL,
	[_2PA] [float] NOT NULL,
	[_2P1] [float] NOT NULL,
	[eFG] [float] NOT NULL,
	[FT] [float] NOT NULL,
	[FTA] [float] NOT NULL,
	[FT1] [float] NOT NULL,
	[ORB] [float] NOT NULL,
	[DRB] [float] NOT NULL,
	[TRB] [float] NOT NULL,
	[AST] [float] NOT NULL,
	[STL] [float] NOT NULL,
	[BLK] [float] NOT NULL,
	[TOV] [float] NOT NULL,
	[PF] [float] NOT NULL,
	[PTS] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FILTRADO_2021-2022 NBA Player Stats - Regular - Hoja 1]    Script Date: 28/9/2024 00:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FILTRADO_2021-2022 NBA Player Stats - Regular - Hoja 1](
	[Rk] [smallint] NOT NULL,
	[Player] [nvarchar](50) NOT NULL,
	[Pos] [nvarchar](50) NOT NULL,
	[Age] [tinyint] NOT NULL,
	[Tm] [nvarchar](50) NOT NULL,
	[G] [tinyint] NOT NULL,
	[GS] [tinyint] NOT NULL,
	[MP] [float] NOT NULL,
	[FG] [float] NOT NULL,
	[FGA] [float] NOT NULL,
	[FG1] [float] NOT NULL,
	[_3P] [float] NOT NULL,
	[_3PA] [float] NOT NULL,
	[_3P1] [float] NOT NULL,
	[_2P] [float] NOT NULL,
	[_2PA] [float] NOT NULL,
	[_2P1] [float] NOT NULL,
	[eFG] [float] NOT NULL,
	[FT] [float] NOT NULL,
	[FTA] [float] NOT NULL,
	[FT1] [float] NOT NULL,
	[ORB] [float] NOT NULL,
	[DRB] [float] NOT NULL,
	[TRB] [float] NOT NULL,
	[AST] [float] NOT NULL,
	[STL] [float] NOT NULL,
	[BLK] [float] NOT NULL,
	[TOV] [float] NOT NULL,
	[PF] [float] NOT NULL,
	[PTS] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[game_filtered_by_date]    Script Date: 28/9/2024 00:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[game_filtered_by_date](
	[season_id] [int] NOT NULL,
	[team_id_home] [int] NOT NULL,
	[team_abbreviation_home] [nvarchar](50) NOT NULL,
	[team_name_home] [nvarchar](50) NOT NULL,
	[game_id] [int] NOT NULL,
	[game_date] [date] NOT NULL,
	[matchup_home] [nvarchar](50) NOT NULL,
	[wl_home] [nvarchar](50) NOT NULL,
	[min] [smallint] NOT NULL,
	[fgm_home] [float] NOT NULL,
	[fga_home] [float] NOT NULL,
	[fg_pct_home] [float] NOT NULL,
	[fg3m_home] [float] NOT NULL,
	[fg3a_home] [float] NOT NULL,
	[fg3_pct_home] [float] NOT NULL,
	[ftm_home] [float] NOT NULL,
	[fta_home] [float] NOT NULL,
	[ft_pct_home] [float] NOT NULL,
	[oreb_home] [float] NOT NULL,
	[dreb_home] [float] NOT NULL,
	[reb_home] [float] NOT NULL,
	[ast_home] [float] NOT NULL,
	[stl_home] [float] NOT NULL,
	[blk_home] [float] NOT NULL,
	[tov_home] [float] NOT NULL,
	[pf_home] [float] NOT NULL,
	[pts_home] [float] NOT NULL,
	[plus_minus_home] [smallint] NOT NULL,
	[video_available_home] [tinyint] NOT NULL,
	[team_id_away] [int] NOT NULL,
	[team_abbreviation_away] [nvarchar](50) NOT NULL,
	[team_name_away] [nvarchar](50) NOT NULL,
	[matchup_away] [nvarchar](50) NOT NULL,
	[wl_away] [nvarchar](50) NOT NULL,
	[fgm_away] [float] NOT NULL,
	[fga_away] [float] NOT NULL,
	[fg_pct_away] [float] NOT NULL,
	[fg3m_away] [float] NOT NULL,
	[fg3a_away] [float] NOT NULL,
	[fg3_pct_away] [float] NOT NULL,
	[ftm_away] [float] NOT NULL,
	[fta_away] [float] NOT NULL,
	[ft_pct_away] [float] NOT NULL,
	[oreb_away] [float] NOT NULL,
	[dreb_away] [float] NOT NULL,
	[reb_away] [float] NOT NULL,
	[ast_away] [float] NOT NULL,
	[stl_away] [float] NOT NULL,
	[blk_away] [float] NOT NULL,
	[tov_away] [float] NOT NULL,
	[pf_away] [float] NOT NULL,
	[pts_away] [float] NOT NULL,
	[plus_minus_away] [smallint] NOT NULL,
	[video_available_away] [tinyint] NOT NULL,
	[season_type] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[line_score_filtered]    Script Date: 28/9/2024 00:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[line_score_filtered](
	[game_date_est] [datetime2](7) NOT NULL,
	[game_sequence] [float] NOT NULL,
	[game_id] [int] NOT NULL,
	[team_id_home] [int] NOT NULL,
	[team_abbreviation_home] [nvarchar](50) NOT NULL,
	[team_city_name_home] [nvarchar](50) NOT NULL,
	[team_nickname_home] [nvarchar](50) NOT NULL,
	[team_wins_losses_home] [nvarchar](50) NOT NULL,
	[pts_qtr1_home] [float] NOT NULL,
	[pts_qtr2_home] [float] NOT NULL,
	[pts_qtr3_home] [float] NOT NULL,
	[pts_qtr4_home] [float] NOT NULL,
	[pts_ot1_home] [float] NOT NULL,
	[pts_ot2_home] [float] NOT NULL,
	[pts_ot3_home] [float] NOT NULL,
	[pts_ot4_home] [float] NOT NULL,
	[pts_ot5_home] [float] NOT NULL,
	[pts_ot6_home] [float] NOT NULL,
	[pts_ot7_home] [float] NOT NULL,
	[pts_ot8_home] [float] NOT NULL,
	[pts_ot9_home] [float] NOT NULL,
	[pts_ot10_home] [float] NOT NULL,
	[pts_home] [float] NOT NULL,
	[team_id_away] [int] NOT NULL,
	[team_abbreviation_away] [nvarchar](50) NOT NULL,
	[team_city_name_away] [nvarchar](50) NOT NULL,
	[team_nickname_away] [nvarchar](50) NOT NULL,
	[team_wins_losses_away] [nvarchar](50) NOT NULL,
	[pts_qtr1_away] [float] NOT NULL,
	[pts_qtr2_away] [float] NOT NULL,
	[pts_qtr3_away] [float] NOT NULL,
	[pts_qtr4_away] [float] NOT NULL,
	[pts_ot1_away] [float] NOT NULL,
	[pts_ot2_away] [float] NOT NULL,
	[pts_ot3_away] [float] NOT NULL,
	[pts_ot4_away] [float] NOT NULL,
	[pts_ot5_away] [float] NOT NULL,
	[pts_ot6_away] [float] NOT NULL,
	[pts_ot7_away] [float] NOT NULL,
	[pts_ot8_away] [float] NOT NULL,
	[pts_ot9_away] [float] NOT NULL,
	[pts_ot10_away] [float] NOT NULL,
	[pts_away] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[others_stats_filtered]    Script Date: 28/9/2024 00:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[others_stats_filtered](
	[game_id] [int] NOT NULL,
	[league_id] [tinyint] NOT NULL,
	[team_id_home] [int] NOT NULL,
	[team_abbreviation_home] [nvarchar](50) NOT NULL,
	[team_city_home] [nvarchar](50) NOT NULL,
	[pts_paint_home] [tinyint] NOT NULL,
	[pts_2nd_chance_home] [tinyint] NOT NULL,
	[pts_fb_home] [tinyint] NOT NULL,
	[largest_lead_home] [tinyint] NOT NULL,
	[lead_changes] [tinyint] NOT NULL,
	[times_tied] [tinyint] NOT NULL,
	[team_turnovers_home] [float] NOT NULL,
	[total_turnovers_home] [float] NOT NULL,
	[team_rebounds_home] [float] NOT NULL,
	[pts_off_to_home] [float] NOT NULL,
	[team_id_away] [int] NOT NULL,
	[team_abbreviation_away] [nvarchar](50) NOT NULL,
	[team_city_away] [nvarchar](50) NOT NULL,
	[pts_paint_away] [tinyint] NOT NULL,
	[pts_2nd_chance_away] [tinyint] NOT NULL,
	[pts_fb_away] [tinyint] NOT NULL,
	[largest_lead_away] [tinyint] NOT NULL,
	[team_turnovers_away] [float] NOT NULL,
	[total_turnovers_away] [float] NOT NULL,
	[team_rebounds_away] [float] NOT NULL,
	[pts_off_to_away] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player_filtered]    Script Date: 28/9/2024 00:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player_filtered](
	[id] [int] NOT NULL,
	[full_name] [nvarchar](50) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[is_active] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[team]    Script Date: 28/9/2024 00:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[team](
	[id] [int] NOT NULL,
	[full_name] [nvarchar](50) NOT NULL,
	[abbreviation] [nvarchar](50) NOT NULL,
	[nickname] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[year_founded] [float] NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Sportics_LAM] SET  READ_WRITE 
GO
