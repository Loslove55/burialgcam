.class public final Lmpx;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmpv;
    .locals 1

    new-instance v0, Lmpv;

    invoke-direct {v0}, Lmpv;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lmpx;->a()Lmpv;

    move-result-object v0

    return-object v0
.end method
