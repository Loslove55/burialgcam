.class final synthetic Ljhf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljhj;

.field private final b:Ljava/lang/Runnable;

.field private final c:Loye;


# direct methods
.method public constructor <init>(Ljhj;Ljava/lang/Runnable;Loye;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljhf;->a:Ljhj;

    iput-object p2, p0, Ljhf;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Ljhf;->c:Loye;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ljhf;->a:Ljhj;

    iget-object v1, p0, Ljhf;->b:Ljava/lang/Runnable;

    iget-object v2, p0, Ljhf;->c:Loye;

    iget-object v3, v0, Ljhj;->b:Landroid/app/Activity;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljhi;

    invoke-direct {v3, v1, v2}, Ljhi;-><init>(Ljava/lang/Runnable;Loye;)V

    iget-object v1, v0, Ljhj;->g:Lhnn;

    iget-object v0, v0, Ljhj;->b:Landroid/app/Activity;

    invoke-interface {v1, v0, v3}, Lhnn;->a(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Loye;->b(Ljava/lang/Object;)Z

    return-void
.end method
