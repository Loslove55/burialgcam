.class public final Lndl;
.super Ljava/lang/Object;

# interfaces
.implements Lndq;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lndl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lneo;)V
    .locals 1

    iget-object v0, p0, Lndl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lneo;->a(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
