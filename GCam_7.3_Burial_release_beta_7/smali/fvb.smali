.class final Lfvb;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lfvd;


# direct methods
.method public constructor <init>(Lfvd;)V
    .locals 0

    iput-object p1, p0, Lfvb;->a:Lfvd;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    sget-object p1, Lfvd;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lfvb;->a:Lfvd;

    iget-object v0, v0, Lfvd;->g:Lfvj;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lfvb;->a:Lfvd;

    invoke-virtual {p1, v0}, Lfvd;->b(Lfvj;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
