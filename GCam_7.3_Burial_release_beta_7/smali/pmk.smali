.class public final Lpmk;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcqy;->c(I)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lpmk;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a()Lpmq;
    .locals 2

    new-instance v0, Lpmq;

    iget-object v1, p0, Lpmk;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Lpmq;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lpnh;)V
    .locals 2

    iget-object v0, p0, Lpmk;->a:Ljava/util/LinkedHashMap;

    const-string v1, "key"

    invoke-static {p1, v1}, Lcqy;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "provider"

    invoke-static {p2, v1}, Lcqy;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
