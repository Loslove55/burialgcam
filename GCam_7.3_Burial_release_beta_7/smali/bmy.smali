.class final synthetic Lbmy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Loye;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Loye;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbmy;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lbmy;->b:Loye;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbmy;->a:Ljava/lang/Runnable;

    iget-object v1, p0, Lbmy;->b:Loye;

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Loye;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Loye;->b(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Loye;->b(Ljava/lang/Object;)Z

    throw v0
.end method
