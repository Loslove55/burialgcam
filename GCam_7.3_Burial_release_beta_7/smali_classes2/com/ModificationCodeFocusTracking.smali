.class public Lcom/ModificationCodeFocusTracking;
.super Ljava/lang/Object;
.source "ModificationCodeFocusTracking.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FocisTrackingAllowDeivce()Z
    .locals 2

    const-string v1, "pref_tracking_option_available_key"

    invoke-static {v1}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v0, "sdm730"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v0, "sdm855"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ModificationCodeFocusTracking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
