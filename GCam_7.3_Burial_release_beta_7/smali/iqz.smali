.class public final Liqz;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# direct methods
.method public static final a()Llph;
    .locals 2

    new-instance v0, Llph;

    invoke-direct {v0}, Llph;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcqy;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llph;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
