.class public final Lbdw;
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

.field private final g:Lpnh;

.field private final h:Lpnh;

.field private final i:Lpnh;

.field private final j:Lpnh;

.field private final k:Lpnh;

.field private final l:Lpnh;

.field private final m:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbdw;->a:Lpnh;

    iput-object p2, p0, Lbdw;->b:Lpnh;

    iput-object p3, p0, Lbdw;->c:Lpnh;

    iput-object p4, p0, Lbdw;->d:Lpnh;

    iput-object p5, p0, Lbdw;->e:Lpnh;

    iput-object p6, p0, Lbdw;->f:Lpnh;

    iput-object p7, p0, Lbdw;->g:Lpnh;

    iput-object p8, p0, Lbdw;->h:Lpnh;

    iput-object p9, p0, Lbdw;->i:Lpnh;

    iput-object p10, p0, Lbdw;->j:Lpnh;

    iput-object p11, p0, Lbdw;->k:Lpnh;

    iput-object p12, p0, Lbdw;->l:Lpnh;

    iput-object p13, p0, Lbdw;->m:Lpnh;

    return-void
.end method


# virtual methods
.method public final a()Lbdv;
    .locals 15

    iget-object v1, p0, Lbdw;->a:Lpnh;

    iget-object v2, p0, Lbdw;->b:Lpnh;

    iget-object v3, p0, Lbdw;->c:Lpnh;

    iget-object v4, p0, Lbdw;->d:Lpnh;

    iget-object v5, p0, Lbdw;->e:Lpnh;

    iget-object v6, p0, Lbdw;->f:Lpnh;

    iget-object v7, p0, Lbdw;->g:Lpnh;

    iget-object v8, p0, Lbdw;->h:Lpnh;

    iget-object v9, p0, Lbdw;->i:Lpnh;

    iget-object v10, p0, Lbdw;->j:Lpnh;

    iget-object v11, p0, Lbdw;->k:Lpnh;

    iget-object v12, p0, Lbdw;->l:Lpnh;

    iget-object v13, p0, Lbdw;->m:Lpnh;

    new-instance v14, Lbdv;

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lbdv;-><init>(Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;Lpnh;)V

    return-object v14
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbdw;->a()Lbdv;

    move-result-object v0

    return-object v0
.end method
