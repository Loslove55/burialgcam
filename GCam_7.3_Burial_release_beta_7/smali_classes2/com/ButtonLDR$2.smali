.class Lcom/ButtonLDR$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ButtonLDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ButtonLDR;


# direct methods
.method constructor <init>(Lcom/ButtonLDR;)V
    .locals 0

    iput-object p1, p0, Lcom/ButtonLDR$2;->this$0:Lcom/ButtonLDR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/ButtonLDR$2;->this$0:Lcom/ButtonLDR;

    invoke-static {}, Lcom/FixBSG;->onRestart()V

    return-void
.end method
