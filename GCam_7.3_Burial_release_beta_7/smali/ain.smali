.class final Lain;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laiw;

.field final synthetic b:Laiq;


# direct methods
.method public constructor <init>(Laiq;Laiw;)V
    .locals 0

    iput-object p1, p0, Lain;->b:Laiq;

    iput-object p2, p0, Lain;->a:Laiw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lain;->b:Laiq;

    invoke-virtual {v0}, Laiq;->f()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lain;->b:Laiq;

    invoke-virtual {v0}, Laiq;->f()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lain;->a:Laiw;

    iget-object v1, v1, Laiw;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
