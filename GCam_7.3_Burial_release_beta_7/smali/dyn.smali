.class final Ldyn;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbkk;

.field final synthetic c:Ldyo;


# direct methods
.method public constructor <init>(Ldyo;Ljava/util/List;Lbkk;)V
    .locals 0

    iput-object p1, p0, Ldyn;->c:Ldyo;

    iput-object p2, p0, Ldyn;->a:Ljava/util/List;

    iput-object p3, p0, Ldyn;->b:Lbkk;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, [Ljava/lang/Void;

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Ldyn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Ldyn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Ldyn;->c:Ldyo;

    iget-object v2, v2, Ldyo;->a:Ldzc;

    iget-object v2, v2, Ldzc;->x:Lckq;

    invoke-virtual {v2, v1}, Lckq;->a(Landroid/net/Uri;)Lckp;

    move-result-object v1

    new-instance v2, Lcjd;

    invoke-direct {v2, v1}, Lcjd;-><init>(Lckp;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ldzc;->a:Ljava/lang/String;

    const-string v0, "onSessionDone called with an empty burst"

    invoke-static {p1, v0}, Lijd;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcjf;->a(Ljava/util/List;)Lcjf;

    move-result-object v5

    new-instance p1, Lcje;

    iget-object v0, p0, Ldyn;->c:Ldyo;

    iget-object v0, v0, Ldyo;->a:Ldzc;

    iget-object v1, v0, Ldzc;->z:Lhge;

    iget-object v2, v0, Ldzc;->c:Lhqg;

    iget-object v3, v0, Ldzc;->d:Landroid/content/Context;

    iget-object v4, v0, Ldzc;->u:Lckj;

    iget-object v6, v0, Ldzc;->m:Lilv;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcje;-><init>(Lhge;Lhqg;Landroid/content/Context;Lckj;Lcjf;Lilv;)V

    nop

    nop

    :goto_1
    return-object p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcje;

    if-eqz p1, :cond_0

    iget-object v0, p0, Ldyn;->c:Ldyo;

    iget-object v1, p0, Ldyn;->b:Lbkk;

    invoke-virtual {v0, v1, p1}, Ldyo;->a(Lbkk;Lbki;)V

    :cond_0
    return-void
.end method
