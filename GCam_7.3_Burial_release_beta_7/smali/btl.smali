.class final Lbtl;
.super Ljava/lang/Object;

# interfaces
.implements Ldww;


# instance fields
.field final synthetic a:Lbto;


# direct methods
.method public constructor <init>(Lbto;)V
    .locals 0

    iput-object p1, p0, Lbtl;->a:Lbto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lbtl;->a:Lbto;

    iget-object p1, p1, Lbto;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbxd;

    invoke-interface {v2}, Lbxd;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbtl;->a:Lbto;

    iget-object p1, p1, Lbto;->f:Lkhc;

    invoke-interface {p1}, Lkhc;->q()V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbtl;->a:Lbto;

    iget-object p1, p1, Lbto;->f:Lkhc;

    invoke-interface {p1}, Lkhc;->p()V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbtl;->a:Lbto;

    invoke-virtual {p1}, Lbto;->c()V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 0

    return-void
.end method

.method public final f(Z)V
    .locals 0

    return-void
.end method

.method public final g(Z)V
    .locals 0

    return-void
.end method
