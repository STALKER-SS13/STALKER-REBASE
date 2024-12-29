import { Button, Collapsible, Section, Stack } from 'tgui-core/components';
import { capitalize } from 'tgui-core/string';

import { useBackend } from '../backend';
import { Window } from '../layouts';

export const Autoexchange = (props) => {
  const { act, data } = useBackend();
  const { categories = [], items = [], cfilter, buying = [] } = data;

  return (
    <Window width={500} height={700} title={'Autoexchange'}>
      <Window.Content>
        {/* All Sections */}
        <Stack vertical fill>
          {/* Categories & Items */}
          <Stack.Item>
            <Stack>
              {/* Categories */}
              <Stack.Item>
                <Section title="CATEGORIES">
                  {categories.map((category) => {
                    if (category.subcategories !== null) {
                      return (
                        <Collapsible
                          title={capitalize(category.name.replace('_', ' '))}
                        >
                          {category.subcategories.map((subcategory) => (
                            <Button
                              content={capitalize(
                                subcategory.name.replace('_', ' '),
                              )}
                              onClick={() =>
                                act('category', {
                                  category:
                                    category.name + '/' + subcategory.name,
                                })
                              }
                            />
                          ))}
                        </Collapsible>
                      );
                    } else {
                      return (
                        <Button
                          content={category.name}
                          onClick={() =>
                            act('category', {
                              category: category.name,
                            })
                          }
                        />
                      );
                    }
                  })}
                </Section>
              </Stack.Item>
              {/* Items */}
              <Stack.Item grow>
                <Section
                  title={
                    cfilter === ''
                      ? 'ALL CATEGORIES'
                      : cfilter
                          .split('/')
                          [cfilter.split('/').length - 1].replace('_', ' ')
                          .toUpperCase()
                  }
                >
                  {items
                    .filter((item) =>
                      item.category
                        .toLowerCase()
                        .includes(cfilter.toLowerCase()),
                    )
                    .map((item) => (
                      <div>
                        <Button
                          content={item.name}
                          onClick={() =>
                            act('addItem', {
                              item: item.path,
                            })
                          }
                        />
                      </div>
                    ))}
                </Section>
              </Stack.Item>
            </Stack>
          </Stack.Item>
          {/* Exchange */}
          <Stack.Item>
            <Stack style={{ height: '20vh' }}>
              {/* Sell */}
              <Stack.Item grow>
                <Section title="SELL" fill>
                  <div>{}</div>
                </Section>
              </Stack.Item>
              {/* Purchase */}
              <Stack.Item grow>
                <Section title="PURCHASE" fill>
                  {buying.map((item) => (
                    <div>{item.name}</div>
                  ))}
                </Section>
              </Stack.Item>
            </Stack>
          </Stack.Item>
        </Stack>
      </Window.Content>
    </Window>
  );
};
