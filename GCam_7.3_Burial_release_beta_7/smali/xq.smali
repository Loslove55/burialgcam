.class final Lxq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;


# instance fields
.field final synthetic a:Lxt;


# direct methods
.method public constructor <init>(Lxt;)V
    .locals 0

    iput-object p1, p0, Lxq;->a:Lxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawableLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lxq;->a:Lxt;

    iput-object p1, v0, Lxt;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lxt;->a()V

    :cond_0
    return-void
.end method
