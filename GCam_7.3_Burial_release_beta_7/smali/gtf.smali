.class final synthetic Lgtf;
.super Ljava/lang/Object;

# interfaces
.implements Lnzw;


# instance fields
.field private final a:Lmjz;


# direct methods
.method public constructor <init>(Lmjz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgtf;->a:Lmjz;

    return-void
.end method

.method public static getStringPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lgtf;->a:Lmjz;

    check-cast p1, Lhuc;

    invoke-interface {v0}, Lmjz;->N()Lmkq;

    move-result-object v0

    sget-object v1, Lmkq;->a:Lmkq;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lhuc;->a:Lhuc;

    invoke-virtual {p1}, Lhuc;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    :goto_0
    nop

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lhuc;->a:Lhuc;

    invoke-virtual {p1}, Lhuc;->ordinal()I

    move-result p1

    sget-object v1, Lpak;->b:Lmoo;

    const-string v6, "pref_aux_key"

    invoke-static {v6}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v6

    const p0, 0x1

    if-eq v6, p0, :cond_8

    const p0, 0x2

    if-eq v6, p0, :cond_e

    const p0, 0x3

    if-eq v6, p0, :cond_14

    const p0, 0x4

    if-eq v6, p0, :cond_1a

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const-string v0, "af_infinity_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "0.07"

    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_4
    const-string v0, "af_far_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "0.08"

    :cond_5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_6
    const-string v0, "af_near_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "14.29"

    :cond_7
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_8
    if-eq p1, v3, :cond_c

    const/4 v3, 0x3

    if-eq p1, v3, :cond_a

    const-string v0, "af_infinity_tele_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "0.10"

    :cond_9
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_a
    const-string v0, "af_far_tele_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "0.11"

    :cond_b
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_c
    const-string v0, "af_near_tele_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "5.0"

    :cond_d
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_e
    if-eq p1, v3, :cond_12

    const/4 v3, 0x3

    if-eq p1, v3, :cond_10

    const-string v0, "af_infinity_wide_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "0.81"

    :cond_f
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_10
    const-string v0, "af_far_wide_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, "0.83"

    :cond_11
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_12
    const-string v0, "af_near_wide_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "25"

    :cond_13
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_14
    if-eq p1, v3, :cond_18

    const/4 v3, 0x3

    if-eq p1, v3, :cond_16

    const-string v0, "af_infinity_4th_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "0.07"

    :cond_15
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_16
    const-string v0, "af_far_4th_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "0.08"

    :cond_17
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_18
    const-string v0, "af_near_4th_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "25"

    :cond_19
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_1a
    if-eq p1, v3, :cond_1e

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1c

    const-string v0, "af_infinity_5th_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "0"

    :cond_1b
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_1c
    const-string v0, "af_far_5th_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v0, "2.0"

    :cond_1d
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :cond_1e
    const-string v0, "af_near_5th_key"

    invoke-static {v0}, Lgtf;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v0, "14.29"

    :cond_1f
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto/16 :goto_2

    :goto_1
    goto :goto_2

    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
