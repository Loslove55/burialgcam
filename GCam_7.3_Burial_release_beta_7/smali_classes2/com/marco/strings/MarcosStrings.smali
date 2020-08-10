.class public Lcom/marco/strings/MarcosStrings;
.super Ljava/lang/Object;
.source "MarcosStrings.java"


# static fields
.field public static advancedkeys:[Ljava/lang/String; = null

.field public static advancednames:[Ljava/lang/String; = null

.field public static menustrings:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static oldkeys:[Ljava/lang/String; = null

.field public static oldnames:[Ljava/lang/String; = null

.field public static persistents:[Ljava/lang/String; = null

.field public static removeNames:[Ljava/lang/String; = null

.field public static resetFile:Ljava/lang/String; = null

.field public static scenarios:[Ljava/lang/String; = null

.field public static starterkeys:[Ljava/lang/String; = null

.field public static starternames:[Ljava/lang/String; = null

.field public static userkeys:[Ljava/lang/String; = null

.field public static usernames:[Ljava/lang/String; = null

.field public static xmlPath:Ljava/lang/String; = "GCam/Configs7/Minilux"


# direct methods
.method static constructor <clinit>()V
    .locals 52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/marco/strings/MarcosStrings;->xmlPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.reset09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->resetFile:Ljava/lang/String;

    const-string v1, "/example.file"

    const-string v2, "/.awb"

    const-string v3, "/.reset"

    const-string v4, "/.reset01"

    const-string v5, "/.reset02"

    const-string v6, "/.reset03"

    const-string v7, "/.reset04"

    const-string v8, "/.reset05"

    const-string v9, "/.reset06"

    const-string v10, "/.reset07"

    const-string v11, "/.reset08"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->removeNames:[Ljava/lang/String;

    const-string v1, "day"

    const-string v2, "night"

    const-string v3, "people"

    const-string v4, "food"

    const-string v5, "sport"

    const-string v6, "nature"

    const-string v7, "zoom"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->scenarios:[Ljava/lang/String;

    const-string v0, "pref_category_XML_day"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->starterkeys:[Ljava/lang/String;

    const-string v0, "day.xml"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->starternames:[Ljava/lang/String;

    const-string v1, "pref_XML_juanall"

    const-string v2, "pref_XML_juansrz"

    const-string v3, "pref_XML_pretty"

    const-string v4, "pref_XML_sharp"

    const-string v5, "pref_XML_xtype"

    const-string v6, "pref_XML_quick"

    const-string v7, "pref_XML_lux"

    const-string v8, "pref_XML_1900"

    const-string v9, "pref_XML_cafe"

    const-string v10, "pref_XML_daddy"

    const-string v11, "pref_XML_food"

    const-string v12, "pref_XML_grunge"

    const-string v13, "pref_XML_kodak"

    const-string v14, "pref_XML_trek"

    const-string v15, "pref_XML_monochrome"

    const-string v16, "pref_XML_gtype"

    const-string v17, "pref_XML_nightowl"

    const-string v18, "pref_XML_astrolabe"

    const-string v19, "pref_XML_reflex"

    const-string v20, "pref_XML_nightowlO"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->advancedkeys:[Ljava/lang/String;

    const-string v1, "\ud83d\udcf7 Juan All \ud83c\udf1e.xml"

    const-string v2, "\ud83d\udcf7 Juan SRZ \ud83d\udd0d.xml"

    const-string v3, "\ud83d\udcf7 Pretty \u2728.xml"

    const-string v4, "\ud83d\udcf7 Sharp & Natural \ud83c\udf40.xml"

    const-string v5, "\ud83d\udcf7 X-Type \ud83c\udf04.xml"

    const-string v6, "\ud83d\udcf7 Quick Shot! \ud83d\udc0e.xml"

    const-string v7, "\ud83d\udcf7 Luxportrait \ud83e\udd33.xml"

    const-string v8, "\ud83d\udcf7 1900 \ud83c\udfa9.xml"

    const-string v9, "\ud83d\udcf7 Caf\u00e9 de Paris \ud83d\uddfc.xml"

    const-string v10, "\ud83d\udcf7 DaddysRolleiflex \ud83d\udc54.xml"

    const-string v11, "\ud83d\udcf7 Food \ud83c\udf71.xml"

    const-string v12, "\ud83d\udcf7 Grunge Lomography \ud83d\udef5.xml"

    const-string v13, "\ud83d\udcf7 Kodak Portra \ud83d\udc6a.xml"

    const-string v14, "\ud83d\udcf7 Trek for 7 \ud83c\udf44.xml"

    const-string v15, "\ud83d\udcf7 Monochrome \u265f\ufe0f.xml"

    const-string v16, "\ud83d\udcf7 G-Type \ud83d\ude80.xml"

    const-string v17, "\ud83d\udcf7 Night Owl \ud83e\udd89.xml"

    const-string v18, "\ud83d\udcf7 Astrolabe \ud83c\udf0c.xml"

    const-string v19, "\ud83d\udcf7 Reflex \u26a1.xml"

    const-string v20, "\ud83d\udcf7 Night Owl Original \ud83e\udd89.xml"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->advancednames:[Ljava/lang/String;

    const-string v1, "pref_category_XML_user_apollo"

    const-string v2, "pref_category_XML_user_flower"

    const-string v3, "pref_category_XML_user_jahidday"

    const-string v4, "pref_category_XML_user_jkcolorful"

    const-string v5, "pref_category_XML_user_lowlight"

    const-string v6, "pref_category_XML_user_coffee"

    const-string v7, "pref_category_XML_user_fast"

    const-string v8, "pref_category_XML_user_ippdetailsV1"

    const-string v9, "pref_category_XML_user_MacroApollo"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->userkeys:[Ljava/lang/String;

    const-string v1, "\ud83d\udcf7 Apollo \u2604\ufe0f.xml"

    const-string v2, "\ud83d\udcf7 Flower \ud83c\udf3c.xml"

    const-string v3, "\ud83d\udcf7 Jahid X2.1 Day \ud83c\udf80.xml"

    const-string v4, "\ud83d\udcf7 JK-ColourfullNSharp \ud83c\udf08.xml"

    const-string v5, "\ud83d\udcf7 Low Light \ud83d\udcab.xml"

    const-string v6, "\ud83d\udcf7 Coffee \u2615.xml"

    const-string v7, "\ud83d\udcf7 Fast \ud83c\udfce\ufe0f.xml"

    const-string v8, "\ud83d\udcf7 ippdetailsV1 \ud83c\udf4e.xml"

    const-string v9, "\ud83d\udcf7 MacroApollo \ud83d\udd25.xml"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->usernames:[Ljava/lang/String;

    const-string v0, "pref_XML_hdr"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->oldkeys:[Ljava/lang/String;

    const-string v0, "\ud83d\udcf7 HDR extra \u26c5.xml"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->oldnames:[Ljava/lang/String;

    const-string v1, "starter_xmls_off"

    const-string v2, "advanced_xmls_off"

    const-string v3, "old_xmls_off"

    const-string v4, "user_xmls_off"

    const-string v5, "pref_xmlswitch_key"

    const-string v6, "pref_dayxml_key"

    const-string v7, "pref_nightxml_key"

    const-string v8, "pref_peoplexml_key"

    const-string v9, "pref_foodxml_key"

    const-string v10, "pref_sportxml_key"

    const-string v11, "pref_naturexml_key"

    const-string v12, "pref_zoomxml_key"

    const-string v13, "pref_category_XML_switch"

    const-string v14, "pref_category_XML_switch_background"

    const-string v15, "pref_category_XML_switch_background_color"

    const-string v16, "pref_category_AWB_switch"

    const-string v17, "pref_category_AWB_switch_background"

    const-string v18, "pref_category_AWB_switch_background_color"

    const-string v19, "pref_category_ASTRO_switch"

    const-string v20, "pref_category_ASTRO_switch_background"

    const-string v21, "pref_category_ASTRO_switch_background_color"

    const-string v22, "pref_category_XML_filename"

    const-string v23, "pref_category_XML_filename_noEmoji"

    const-string v24, "pref_category_portfix"

    const-string v25, "pref_category_portraitfolder"

    const-string v26, "pref_category_gridpersistent"

    const-string v27, "pref_category_bar"

    const-string v28, "pref_category_barcolor"

    const-string v29, "pref_filesize_key"

    const-string v30, "pref_camera_recordlocation_key"

    const-string v31, "pref_camera_sounds_key"

    const-string v32, "pref_camera_enable_iris"

    const-string v33, "pref_camera_coach_key"

    const-string v34, "pref_camera_selfie_mirror_key"

    const-string v35, "key_social_share_opt_in"

    const-string v36, "key_ff_opt_in"

    const-string v37, "pref_dirty_lens_detector_key"

    const-string v38, "pref_camera_hdrplus_option_available_key"

    const-string v39, "pref_camera_raw_output_option_available_key"

    const-string v40, "pref_video_hevc_setting_key"

    const-string v41, "pref_camera_dynamic_depth_enabled_key"

    const-string v42, "pref_pzoom_key"

    const-string v43, "pref_volume_key_action"

    const-string v44, "pref_double_tap_key"

    const-string v45, "pref_gallery_key"

    const-string v46, "pref_video_quality_ultra_key"

    const-string v47, "pref_4k_timelapse_key"

    const-string v48, "pref_video_stabilization_key"

    const-string v49, "pref_ois_video_stabilization_key"

    const-string v50, "pref_bitrate_key"

    const-string v51, "pref_compression_key"

    filled-new-array/range {v1 .. v51}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marco/strings/MarcosStrings;->persistents:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "pref_dayxml_key"

    const-string v2, "pref_nightxml_key"

    const-string v3, "pref_peoplexml_key"

    const-string v4, "pref_foodxml_key"

    const-string v5, "pref_sportxml_key"

    const-string v6, "pref_naturexml_key"

    const-string v7, "pref_zoomxml_key"

    const-string v8, "pref_volume_key_action"

    const-string v9, "pref_double_tap_key"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/marco/strings/MarcosStrings;->menustrings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
