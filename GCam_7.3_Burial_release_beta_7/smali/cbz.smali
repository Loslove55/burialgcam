.class public final Lcbz;
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

    iput-object p1, p0, Lcbz;->a:Lpnh;

    iput-object p2, p0, Lcbz;->b:Lpnh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcbz;->a:Lpnh;

    check-cast v0, Ldxl;

    invoke-virtual {v0}, Ldxl;->a()Lbfc;

    move-result-object v0

    iget-object v1, p0, Lcbz;->b:Lpnh;

    invoke-interface {v1}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchh;

    new-instance v2, Lcby;

    invoke-direct {v2, v0, v1}, Lcby;-><init>(Lbfc;Lchh;)V

    return-object v2
.end method
