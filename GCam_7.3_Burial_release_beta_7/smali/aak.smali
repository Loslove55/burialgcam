.class public final Laak;
.super Ljava/lang/Object;


# instance fields
.field final a:Laai;

.field private final b:Landroid/view/Choreographer;

.field private final c:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>(Laai;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laak;->a:Laai;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Laak;->b:Landroid/view/Choreographer;

    new-instance p1, Laal;

    invoke-direct {p1, p0}, Laal;-><init>(Laak;)V

    iput-object p1, p0, Laak;->c:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Laak;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Laak;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
