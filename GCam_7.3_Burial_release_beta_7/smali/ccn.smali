.class public final Lccn;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;

.field private final b:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccn;->a:Lpnh;

    iput-object p2, p0, Lccn;->b:Lpnh;

    return-void
.end method


# virtual methods
.method public final a()Lccm;
    .locals 3

    iget-object v0, p0, Lccn;->a:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchh;

    iget-object v1, p0, Lccn;->b:Lpnh;

    invoke-interface {v1}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhvk;

    new-instance v2, Lccm;

    invoke-direct {v2, v0, v1}, Lccm;-><init>(Lchh;Lhvk;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lccn;->a()Lccm;

    move-result-object v0

    return-object v0
.end method
