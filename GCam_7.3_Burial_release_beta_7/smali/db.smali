.class public Ldb;
.super Lcw;


# instance fields
.field public final al:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcw;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldb;->al:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldb;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lcw;->a()V

    return-void
.end method

.method public final a(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcw;->a(II)V

    iget-object p1, p0, Ldb;->al:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object v0, p0, Ldb;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcw;

    iget v1, p0, Lcw;->w:I

    iget v2, p0, Lcw;->A:I

    add-int/2addr v1, v2

    iget v2, p0, Lcw;->x:I

    iget v3, p0, Lcw;->B:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcw;->a(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcp;)V
    .locals 3

    invoke-super {p0, p1}, Lcw;->a(Lcp;)V

    iget-object v0, p0, Ldb;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ldb;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcw;

    invoke-virtual {v2, p1}, Lcw;->a(Lcp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcw;)V
    .locals 1

    iget-object v0, p0, Ldb;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcw;->r:Lcw;

    return-void
.end method

.method public final l()V
    .locals 5

    invoke-super {p0}, Lcw;->l()V

    iget-object v0, p0, Ldb;->al:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ldb;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcw;

    invoke-virtual {p0}, Lcw;->g()I

    move-result v3

    invoke-virtual {p0}, Lcw;->h()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcw;->a(II)V

    instance-of v3, v2, Lcx;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcw;->l()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public n()V
    .locals 4

    invoke-virtual {p0}, Lcw;->l()V

    iget-object v0, p0, Ldb;->al:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ldb;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcw;

    instance-of v3, v2, Ldb;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    check-cast v2, Ldb;

    invoke-virtual {v2}, Ldb;->n()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
