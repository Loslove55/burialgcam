.class final Lacd;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field private final g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lacd;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lacd;->g:Landroid/view/View;

    iget v1, p0, Lacd;->a:I

    iget v2, p0, Lacd;->b:I

    iget v3, p0, Lacd;->c:I

    iget v4, p0, Lacd;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Ladg;->a(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    iput v0, p0, Lacd;->e:I

    iput v0, p0, Lacd;->f:I

    return-void
.end method
