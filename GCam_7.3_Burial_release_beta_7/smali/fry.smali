.class public final Lfry;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;

.field private final b:Lpnh;

.field private final c:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;Lpnh;Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfry;->a:Lpnh;

    iput-object p2, p0, Lfry;->b:Lpnh;

    iput-object p3, p0, Lfry;->c:Lpnh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lfry;->a:Lpnh;

    check-cast v0, Lluz;

    invoke-virtual {v0}, Lluz;->a()Llvb;

    move-result-object v0

    iget-object v1, p0, Lfry;->b:Lpnh;

    check-cast v1, Lhlr;

    invoke-virtual {v1}, Lhlr;->a()Loac;

    move-result-object v1

    iget-object v2, p0, Lfry;->c:Lpnh;

    invoke-interface {v2}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loac;

    new-instance v3, Lfrx;

    invoke-direct {v3, v0, v1, v2}, Lfrx;-><init>(Llvb;Loac;Loac;)V

    return-object v3
.end method
