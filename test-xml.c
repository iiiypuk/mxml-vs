#include <stdio.h>

#include "mxml-2.10/mxml.h"

int main()
{
  FILE *fp;
  mxml_node_t *tree;
  mxml_node_t *node;
  int *whitespace = malloc(2000);

    fp = fopen("test.xml", "r");
    tree = mxmlLoadFile(NULL, fp, MXML_TEXT_CALLBACK);

    if (tree)
    {
      for (node = mxmlFindElement(tree, tree, NULL, NULL, NULL, MXML_DESCEND);
      node != NULL;
      node = mxmlWalkNext(node, NULL, MXML_DESCEND)
      )
      printf("%s ", mxmlGetText(node, whitespace));
    }

  fclose(fp);

  return 0;
}
