.class public final Lccs;
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

    iput-object p1, p0, Lccs;->a:Lpnh;

    iput-object p2, p0, Lccs;->b:Lpnh;

    iput-object p3, p0, Lccs;->c:Lpnh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lccs;->a:Lpnh;

    check-cast v0, Lccn;

    invoke-virtual {v0}, Lccn;->a()Lccm;

    move-result-object v0

    iget-object v1, p0, Lccs;->b:Lpnh;

    invoke-interface {v1}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llnj;

    iget-object v2, p0, Lccs;->c:Lpnh;

    invoke-interface {v2}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llnj;

    new-instance v3, Lccr;

    invoke-direct {v3, v0, v1, v2}, Lccr;-><init>(Lccm;Llnj;Llnj;)V

    return-object v3
.end method
