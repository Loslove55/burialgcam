.class final Lltr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field final synthetic a:Llts;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Llts;)V
    .locals 0

    iput-object p1, p0, Lltr;->a:Llts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/4 p1, 0x1

    const/16 p3, 0x321

    if-ne p2, p3, :cond_0

    iget-boolean p2, p0, Lltr;->c:Z

    if-nez p2, :cond_3

    iput-boolean p1, p0, Lltr;->c:Z

    iget-object p1, p0, Lltr;->a:Llts;

    iget-object p1, p1, Llts;->a:Llrg;

    invoke-interface {p1}, Llrg;->b()V

    return-void

    :cond_0
    const/16 p3, 0x320

    if-ne p2, p3, :cond_1

    iget-boolean p2, p0, Lltr;->b:Z

    if-nez p2, :cond_3

    iput-boolean p1, p0, Lltr;->b:Z

    iget-object p1, p0, Lltr;->a:Llts;

    iget-object p1, p1, Llts;->a:Llrg;

    invoke-interface {p1}, Llrg;->a()V

    return-void

    :cond_1
    const/16 p1, 0x322

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lltr;->a:Llts;

    iget-object p1, p1, Llts;->a:Llrg;

    invoke-interface {p1}, Llrg;->c()V

    return-void

    :cond_2
    const/16 p1, 0x323

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lltr;->a:Llts;

    iget-object p1, p1, Llts;->a:Llrg;

    invoke-interface {p1}, Llrg;->d()V

    :cond_3
    return-void
.end method
