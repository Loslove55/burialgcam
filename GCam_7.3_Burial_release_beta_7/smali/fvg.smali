.class final Lfvg;
.super Ljava/lang/Object;

# interfaces
.implements Lfvj;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Landroid/view/View$OnClickListener;

.field public e:Lfvi;

.field private f:Ljava/util/Date;

.field private g:Ljava/util/Date;

.field private final h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfvg;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lfvg;->f:Ljava/util/Date;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lfvg;->a:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lfvg;->b:I

    return v0
.end method

.method public final b(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lfvg;->g:Ljava/util/Date;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lfvg;->c:I

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lfvj;

    iget v0, p0, Lfvg;->b:I

    invoke-interface {p1}, Lfvj;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lfvg;->b:I

    invoke-interface {p1}, Lfvj;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfvg;->f:Ljava/util/Date;

    invoke-interface {p1}, Lfvj;->d()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    neg-int p1, p1

    return p1

    :cond_1
    const/4 p1, -0x1

    nop

    :goto_0
    return p1
.end method

.method public final d()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lfvg;->f:Ljava/util/Date;

    return-object v0
.end method

.method public final e()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lfvg;->g:Ljava/util/Date;

    return-object v0
.end method

.method public final f()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lfvg;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final g()Lfvi;
    .locals 1

    iget-object v0, p0, Lfvg;->e:Lfvi;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfvg;->h:Ljava/lang/String;

    return-object v0
.end method
