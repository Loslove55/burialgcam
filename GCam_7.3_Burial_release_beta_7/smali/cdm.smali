.class public final Lcdm;
.super Lced;

# interfaces
.implements Liht;


# instance fields
.field public final a:Lihs;

.field public final b:Lihu;

.field public final c:Lihu;

.field public final d:Lihu;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Ljqn;Lkhc;Landroid/view/Window;Ljfc;Lboj;Lgpq;Ljiu;Lctf;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lced;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Ljqn;Lkhc;Landroid/view/Window;Ljfc;Lboj;Lgpq;Ljiu;Lctf;)V

    new-instance p1, Lcdj;

    invoke-direct {p1, p0}, Lcdj;-><init>(Lcdm;)V

    new-instance p2, Lihu;

    const/4 p3, 0x0

    new-array p4, p3, [Lihp;

    invoke-direct {p2, p1, p4}, Lihu;-><init>(Lihp;[Lihp;)V

    iput-object p2, p0, Lcdm;->b:Lihu;

    new-instance p1, Lcdk;

    invoke-direct {p1, p0}, Lcdk;-><init>(Lcdm;)V

    new-instance p2, Lihu;

    new-array p4, p3, [Lihp;

    invoke-direct {p2, p1, p4}, Lihu;-><init>(Lihp;[Lihp;)V

    iput-object p2, p0, Lcdm;->c:Lihu;

    new-instance p1, Lcdl;

    invoke-direct {p1, p0}, Lcdl;-><init>(Lcdm;)V

    new-instance p2, Lihu;

    new-array p4, p3, [Lihp;

    invoke-direct {p2, p1, p4}, Lihu;-><init>(Lihp;[Lihp;)V

    iput-object p2, p0, Lcdm;->d:Lihu;

    new-instance p1, Lihs;

    iget-object p2, p0, Lcdm;->b:Lihu;

    invoke-direct {p1, p2, p3}, Lihs;-><init>(Lihu;Z)V

    iput-object p1, p0, Lcdm;->a:Lihs;

    invoke-virtual {p1}, Lihs;->a()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 1

    iget-object v0, p0, Lcdm;->a:Lihs;

    invoke-virtual {v0}, Lihs;->c()Lihu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcdm;->a:Lihs;

    invoke-virtual {v0}, Lihs;->c()Lihu;

    move-result-object v0

    iget-object v0, v0, Lihu;->a:Lihp;

    check-cast v0, Lceh;

    invoke-virtual {v0}, Lceh;->P()V

    :cond_0
    return-void
.end method

.method public final R()V
    .locals 1

    iget-object v0, p0, Lcdm;->a:Lihs;

    invoke-virtual {v0}, Lihs;->f()V

    iget-object v0, p0, Lcdm;->b:Lihu;

    invoke-virtual {v0}, Lihu;->R()V

    iget-object v0, p0, Lcdm;->c:Lihu;

    invoke-virtual {v0}, Lihu;->R()V

    iget-object v0, p0, Lcdm;->d:Lihu;

    invoke-virtual {v0}, Lihu;->R()V

    return-void
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcdm;->a:Lihs;

    invoke-virtual {v0}, Lihs;->c()Lihu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcdm;->a:Lihs;

    invoke-virtual {v0}, Lihs;->c()Lihu;

    move-result-object v0

    iget-object v0, v0, Lihu;->a:Lihp;

    check-cast v0, Lceh;

    invoke-virtual {v0}, Lceh;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lihr;)V
    .locals 0

    invoke-interface {p1, p0}, Lihr;->a(Liht;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcdm;->a:Lihs;

    invoke-virtual {v0}, Lihs;->c()Lihu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcdm;->a:Lihs;

    invoke-virtual {v0}, Lihs;->c()Lihu;

    move-result-object v0

    iget-object v0, v0, Lihu;->a:Lihp;

    check-cast v0, Lceh;

    invoke-virtual {v0}, Lceh;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-super {p0}, Lced;->c()V

    iget-object v0, p0, Lcdm;->a:Lihs;

    invoke-virtual {v0}, Lihs;->d()V

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-super {p0}, Lced;->d()V

    iget-object v0, p0, Lcdm;->a:Lihs;

    invoke-virtual {v0}, Lihs;->e()V

    return-void
.end method
