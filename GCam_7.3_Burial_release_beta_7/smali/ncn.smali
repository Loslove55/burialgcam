.class final synthetic Lncn;
.super Ljava/lang/Object;

# interfaces
.implements Lmyp;


# instance fields
.field private final a:Lcom/google/android/libraries/oliveoil/gl/EGLImage;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/oliveoil/gl/EGLImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lncn;->a:Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lncn;->a:Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    check-cast p1, Lnen;

    invoke-interface {p1}, Lnen;->b()V

    iget-wide v0, v0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->a:J

    invoke-static {v0, v1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->attachToTexture(J)V

    sget-object p1, Lmyn;->a:Lmyn;

    return-object p1
.end method
