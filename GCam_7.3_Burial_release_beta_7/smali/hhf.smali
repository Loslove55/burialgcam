.class public final Lhhf;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lhhc;
    .locals 2

    invoke-static {}, Lhie;->a()Lhid;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcqy;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhc;

    return-object v0
.end method

.method public static b()Lhhf;
    .locals 1

    new-instance v0, Lhhf;

    invoke-direct {v0}, Lhhf;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lhhf;->a()Lhhc;

    move-result-object v0

    return-object v0
.end method
