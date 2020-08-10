.class Lcom/marco/fixes/Thumbnail$2;
.super Ljava/lang/Object;
.source "Thumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/fixes/Thumbnail;->delayPortrait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marco/fixes/Thumbnail;


# direct methods
.method constructor <init>(Lcom/marco/fixes/Thumbnail;)V
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail$2;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/marco/fixes/Thumbnail$2;->this$0:Lcom/marco/fixes/Thumbnail;

    invoke-static {v0}, Lcom/marco/fixes/Thumbnail;->access$800(Lcom/marco/fixes/Thumbnail;)Z

    return-void
.end method
