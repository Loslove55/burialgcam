.class public final Lxe;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/content/ComponentName;

.field private b:I

.field private c:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final a()Z
    .locals 1

    const-string v0, "com.google.android.wearable.permission.RECEIVE_COMPLICATION_DATA_PRIVILEGED"

    invoke-static {p0, v0}, Lgv;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.wearable.permission.RECEIVE_COMPLICATION_DATA"

    invoke-static {p0, v0}, Lgv;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final b()V
    .locals 5

    iget-object v0, p0, Lxe;->a:Landroid/content/ComponentName;

    iget v1, p0, Lxe;->b:I

    iget-object v2, p0, Lxe;->c:[I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.clockwork.home.complications.ACTION_CHOOSE_PROVIDER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.support.wearable.complications.EXTRA_WATCH_FACE_COMPONENT_NAME"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.support.wearable.complications.EXTRA_COMPLICATION_ID"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.support.wearable.complications.EXTRA_SUPPORTED_TYPES"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lxe;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lxe;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lxe;->finish()V

    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lxe;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lxe;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x73d4bad

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x545559e3

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    nop

    const-string v1, "android.support.wearable.complications.ACTION_START_PROVIDER_CHOOSER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "android.support.wearable.complications.ACTION_PERMISSION_REQUEST_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "com.google.android.wearable.permission.RECEIVE_COMPLICATION_DATA"

    const-string v2, "android.support.wearable.complications.EXTRA_WATCH_FACE_COMPONENT_NAME"

    if-eqz v0, :cond_5

    if-ne v0, v4, :cond_4

    nop

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lxe;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Lxe;->a()Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/String;

    aput-object v1, p1, v3

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lgv;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lxe;->finish()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognised intent action."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lxe;->a:Landroid/content/ComponentName;

    const-string v0, "android.support.wearable.complications.EXTRA_COMPLICATION_ID"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lxe;->b:I

    const-string v0, "android.support.wearable.complications.EXTRA_SUPPORTED_TYPES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lxe;->c:[I

    invoke-direct {p0}, Lxe;->a()Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v4, [Ljava/lang/String;

    aput-object v1, p1, v3

    invoke-static {p0, p1, v4}, Lgv;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-direct {p0}, Lxe;->b()V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    array-length p2, p3

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    aget p3, p3, p2

    if-nez p3, :cond_1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    invoke-virtual {p0}, Lxe;->finish()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lxe;->b()V

    :goto_0
    iget-object p1, p0, Lxe;->a:Landroid/content/ComponentName;

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.support.wearable.complications.ACTION_REQUEST_UPDATE_ALL_ACTIVE"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.wearable.app"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.support.wearable.complications.EXTRA_WATCH_FACE_COMPONENT"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "android.support.wearable.complications.EXTRA_PENDING_INTENT"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Lxe;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lxe;->finish()V

    :cond_2
    return-void
.end method
