.class public Llap;
.super Lkuq;


# instance fields
.field protected final q:Llbi;

.field private final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lkqe;Lkqf;Ljava/lang/String;Lkue;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lkuq;-><init>(Landroid/content/Context;Landroid/os/Looper;ILkue;Lkqe;Lkqf;)V

    new-instance p1, Llao;

    invoke-direct {p1, p0}, Llao;-><init>(Llap;)V

    iput-object p1, p0, Llap;->q:Llbi;

    iput-object p5, p0, Llap;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Llba;

    if-nez v1, :cond_0

    new-instance v0, Llaz;

    invoke-direct {v0, p1}, Llaz;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    check-cast v0, Llba;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public final c()I
    .locals 1

    const v0, 0xb5f608

    return v0
.end method

.method public final p()[Lkpa;
    .locals 1

    sget-object v0, Lkzv;->c:[Lkpa;

    return-object v0
.end method

.method protected final q()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Llap;->r:Ljava/lang/String;

    const-string v2, "client_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
