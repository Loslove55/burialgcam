.class public final Lgnc;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;

.field private final b:Lpnh;

.field private final c:Lpnh;

.field private final d:Lpnh;

.field private final e:Lpnh;

.field private final f:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnc;->a:Lpnh;

    iput-object p2, p0, Lgnc;->b:Lpnh;

    iput-object p3, p0, Lgnc;->c:Lpnh;

    iput-object p4, p0, Lgnc;->d:Lpnh;

    iput-object p5, p0, Lgnc;->e:Lpnh;

    iput-object p6, p0, Lgnc;->f:Lpnh;

    return-void
.end method

.method public static a(Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;)Lgnc;
    .locals 8

    new-instance v7, Lgnc;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lgnc;-><init>(Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;)V

    return-object v7
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lgnc;->a:Lpnh;

    check-cast v0, Lgbd;

    invoke-virtual {v0}, Lgbd;->a()Lfys;

    move-result-object v2

    iget-object v0, p0, Lgnc;->b:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgmf;

    iget-object v0, p0, Lgnc;->c:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Llnu;

    iget-object v0, p0, Lgnc;->d:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Llnu;

    iget-object v0, p0, Lgnc;->e:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Llnu;

    iget-object v0, p0, Lgnc;->f:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldnb;

    new-instance v0, Lgnb;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lgnb;-><init>(Lfys;Lgmf;Llnu;Llnu;Llnu;Ldnb;)V

    return-object v0
.end method
