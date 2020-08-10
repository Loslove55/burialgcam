.class Lcom/marco/fixes/Checker$1;
.super Landroid/view/OrientationEventListener;
.source "Checker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/fixes/Checker;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marco/fixes/Checker;


# direct methods
.method constructor <init>(Lcom/marco/fixes/Checker;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    add-int/lit8 p1, p1, 0x2d

    const/16 v0, 0x168

    if-le p1, v0, :cond_0

    add-int/lit16 p1, p1, -0x168

    :cond_0
    div-int/lit8 p1, p1, 0x5a

    iget-object v0, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v0}, Lcom/marco/fixes/Checker;->access$000(Lcom/marco/fixes/Checker;)I

    move-result v0

    iget-object v1, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v1}, Lcom/marco/fixes/Checker;->access$100(Lcom/marco/fixes/Checker;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v0}, Lcom/marco/fixes/Checker;->access$000(Lcom/marco/fixes/Checker;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/marco/fixes/Checker;->access$102(Lcom/marco/fixes/Checker;I)I

    :cond_1
    iget-object v0, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v0}, Lcom/marco/fixes/Checker;->access$200(Lcom/marco/fixes/Checker;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v1}, Lcom/marco/fixes/Checker;->access$000(Lcom/marco/fixes/Checker;)I

    move-result v1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {p1}, Lcom/marco/fixes/Checker;->access$008(Lcom/marco/fixes/Checker;)I

    iget-object p1, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {p1}, Lcom/marco/fixes/Checker;->access$000(Lcom/marco/fixes/Checker;)I

    move-result p1

    iget-object v0, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v0}, Lcom/marco/fixes/Checker;->access$200(Lcom/marco/fixes/Checker;)[I

    move-result-object v0

    array-length v0, v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/marco/fixes/Checker;->access$002(Lcom/marco/fixes/Checker;I)I

    :cond_2
    iget-object p1, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {p1}, Lcom/marco/fixes/Checker;->access$300(Lcom/marco/fixes/Checker;)I

    move-result p1

    iget-object v0, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v0}, Lcom/marco/fixes/Checker;->access$400(Lcom/marco/fixes/Checker;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/marco/fixes/Checker;->access$302(Lcom/marco/fixes/Checker;I)I

    iget-object v0, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v0}, Lcom/marco/fixes/Checker;->access$100(Lcom/marco/fixes/Checker;)I

    move-result v0

    iget-object v1, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v1}, Lcom/marco/fixes/Checker;->access$200(Lcom/marco/fixes/Checker;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v0}, Lcom/marco/fixes/Checker;->access$300(Lcom/marco/fixes/Checker;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/marco/fixes/Checker$1;->this$0:Lcom/marco/fixes/Checker;

    invoke-static {v0}, Lcom/marco/fixes/Checker;->access$300(Lcom/marco/fixes/Checker;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/marco/fixes/Checker;->access$500(Lcom/marco/fixes/Checker;II)V

    :cond_3
    return-void
.end method
